# frozen_string_literal: true
#
# Resume Engine
# =============
# Jekyll::Generator equivalent of `lib/resume/engine.ts`: takes the raw
# `_data/resume.yml` object (already loaded/parsed by Jekyll — the
# "Resume Loader" step) plus the real `site.publications` collection, and
# derives the values templates need but that shouldn't be hand-maintained:
#
#   site.data.resume.timeline               merged, sorted milestone list
#   site.data.resume.total_years_experience integer
#
# This file contains no presentation logic — it only prepares data that
# _pages/cv.md (and, via the rendered page, scripts/generate-cv-pdf.mjs)
# consumes. Runs once per build, before pages are rendered.

module ResumeEngine
  PREPARATION_MARKERS = ['in preparation', 'en preparation', 'en préparation'].freeze

  class Generator < Jekyll::Generator
    priority :high

    def generate(site)
      resume = site.data['resume']
      return unless resume

      resume['timeline'] = build_timeline(resume, site.collections['publications']&.docs || [])
      resume['total_years_experience'] = total_years_experience(resume)
    end

    private

    # Merge education + research_experience + experience + non-"in
    # preparation" publications into one normalized, date-sorted list.
    def build_timeline(resume, publications)
      entries = []

      Array(resume['education']).each do |e|
        next if e['include_in_timeline'] == false

        entries << {
          'date' => e['dates'],
          'sort_key' => e['start_date'],
          'category' => 'Education',
          'title' => e['degree'],
          'description' => join_label(e['institution'], e['track'])
        }
      end

      Array(resume['research_experience']).each do |e|
        next if e['include_in_timeline'] == false

        entries << {
          'date' => e['dates'],
          'sort_key' => e['start_date'],
          'category' => 'Research',
          'title' => e['title'],
          'description' => join_label(e['venue'], e['context'])
        }
      end

      Array(resume['experience']).each do |e|
        next if e['include_in_timeline'] == false

        entries << {
          'date' => e['dates'],
          'sort_key' => e['start_date'],
          'category' => 'Professional',
          'title' => e['title'],
          'description' => join_label(e['venue'], e['responsibilities'])
        }
      end

      publications.each do |pub|
        next if in_preparation?(pub)

        entries << {
          'date' => pub.date.strftime('%b %Y'),
          'sort_key' => pub.date.strftime('%Y-%m'),
          'category' => 'Research Output',
          'title' => "#{output_kind(pub)}: #{pub.data['title']}",
          'description' => pub.data['excerpt']
        }
      end

      entries.sort_by { |e| e['sort_key'] || '0000-00' }.reverse
    end

    def in_preparation?(pub)
      haystack = "#{pub.data['venue']} #{pub.data['title']}".downcase
      PREPARATION_MARKERS.any? { |marker| haystack.include?(marker) }
    end

    def output_kind(pub)
      venue = pub.data['venue'].to_s.downcase
      return 'Preprint' if venue.include?('preprint')
      return 'Presentation' if venue.include?('presentation')

      'Publication'
    end

    def join_label(primary, secondary)
      return primary.to_s if secondary.to_s.empty?

      "#{primary}: #{secondary}"
    end

    # Total distinct years of experience covered by professional +
    # research experience, from the earliest start_date through today
    # (or through an entry's end_date if every entry has already ended).
    def total_years_experience(resume)
      starts = []
      ends = []

      (Array(resume['experience']) + Array(resume['research_experience'])).each do |e|
        next unless e['start_date']

        starts << Date.strptime("#{e['start_date']}-01", '%Y-%m-%d')
        ends << (e['end_date'] ? Date.strptime("#{e['end_date']}-01", '%Y-%m-%d') : Date.today)
      end

      return nil if starts.empty?

      ((ends.max - starts.min) / 365.25).floor
    end
  end
end
