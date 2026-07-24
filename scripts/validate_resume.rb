#!/usr/bin/env ruby
# frozen_string_literal: true
#
# Resume Loader — validation step.
#
# Ruby equivalent of a Zod schema + loader: loads _data/resume.yml, checks
# it against a plain-hash "schema" of required fields per section, and
# exits non-zero with a clear, section-by-section error list if anything
# is missing or the wrong type. Run in CI before `jekyll build` so a
# broken resume.yml fails the deploy instead of shipping bad data.
#
# Usage: ruby scripts/validate_resume.rb [path/to/resume.yml]

require 'yaml'
require 'date'

RESUME_PATH = ARGV[0] || File.join(__dir__, '..', '_data', 'resume.yml')

# section => { required top-level type, required keys per entry }
SCHEMA = {
  'summary' => { type: String, entry_required: [] },
  'education' => { type: Array, entry_required: %w[degree institution dates] },
  'research_experience' => { type: Array, entry_required: %w[title venue dates] },
  'experience' => { type: Array, entry_required: %w[title venue dates] },
  'skills' => { type: Array, entry_required: %w[category items] },
  'certifications' => { type: Array, entry_required: %w[name description] },
  'awards' => { type: Array, entry_required: %w[title issuer date description] },
  'languages' => { type: Array, entry_required: %w[language level] },
  'interests' => { type: Array, entry_required: [] }
}.freeze

def fail_with(errors)
  warn "resume.yml validation failed (#{errors.size} error#{'s' if errors.size != 1}):"
  errors.each { |e| warn "  - #{e}" }
  exit 1
end

unless File.exist?(RESUME_PATH)
  fail_with(["file not found: #{RESUME_PATH}"])
end

begin
  data = YAML.safe_load_file(RESUME_PATH, permitted_classes: [Date])
rescue Psych::SyntaxError => e
  fail_with(["invalid YAML syntax: #{e.message}"])
end

errors = []

SCHEMA.each do |section, rules|
  unless data.key?(section)
    errors << "missing required section: `#{section}`"
    next
  end

  value = data[section]

  unless value.is_a?(rules[:type])
    errors << "`#{section}` must be a #{rules[:type]}, got #{value.class}"
    next
  end

  next unless rules[:type] == Array

  value.each_with_index do |entry, i|
    unless entry.is_a?(Hash)
      errors << "`#{section}[#{i}]` must be a mapping, got #{entry.class}"
      next
    end

    rules[:entry_required].each do |key|
      if entry[key].nil? || entry[key].to_s.strip.empty?
        errors << "`#{section}[#{i}]` is missing required field `#{key}`"
      end
    end
  end
end

# Sections that drive the Resume Engine's chronological sort/merge need a
# parseable start_date wherever it's present (format "YYYY-MM").
%w[education research_experience experience].each do |section|
  Array(data[section]).each_with_index do |entry, i|
    next unless entry.is_a?(Hash)

    sd = entry['start_date']
    next if sd.nil?

    unless sd.to_s.match?(/\A\d{4}-\d{2}\z/)
      errors << "`#{section}[#{i}].start_date` must look like \"YYYY-MM\", got #{sd.inspect}"
    end
  end
end

if errors.empty?
  puts "resume.yml is valid (#{SCHEMA.keys.size} sections checked)."
  exit 0
else
  fail_with(errors)
end
