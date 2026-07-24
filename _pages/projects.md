---
layout: single
permalink: /projects/
title: "Projects"
full_width: true
author_profile: false
---

<section class="hero hero--centered reveal">
  <div class="hero__content">
    <p class="hero__name" style="font-size: clamp(2rem, 4.5vw, 3.4rem); margin-bottom: 0.75rem;">Projects</p>
    <p class="hero__statement">
      Case studies exploring how research ideas become practical computational solutions.
    </p>
  </div>
</section>

<div class="page-prose" markdown="1" style="max-width: 1100px; margin: 0 auto; padding: 0 1.5rem 3rem;">

Every project below is a concrete implementation of one of the [research questions](/research/) driving this work. <a href="/about/">Scientific Journey</a> explains why I think this way; <a href="https://stories.geovanylaguerre.net" target="_blank" rel="noopener noreferrer">Geo's Stories</a> covers how each one actually unfolded. This page shows what got built: each card is an entry point into a full case study covering the problem, methodology, architecture, and what was learned, not just a summary.

<div class="project-filters" role="search">
  <input type="search" id="project-search" class="project-filters__search" placeholder="Search projects…" aria-label="Search projects">

  <div class="project-filters__group" data-filter-group="domain">
    <span class="project-filters__label">Domain</span>
    <button type="button" class="filter-chip is-active" data-filter-value="all">All</button>
    <button type="button" class="filter-chip" data-filter-value="Environmental Modelling">Environmental Modelling</button>
    <button type="button" class="filter-chip" data-filter-value="Scientific Data Infrastructure">Scientific Data Infrastructure</button>
    <button type="button" class="filter-chip" data-filter-value="Artificial Intelligence">Artificial Intelligence</button>
    <button type="button" class="filter-chip" data-filter-value="Healthcare Analytics">Healthcare Analytics</button>
  </div>

  <div class="project-filters__group" data-filter-group="status">
    <span class="project-filters__label">Status</span>
    <button type="button" class="filter-chip is-active" data-filter-value="all">All</button>
    <button type="button" class="filter-chip" data-filter-value="Active">Active</button>
    <button type="button" class="filter-chip" data-filter-value="Prototype">Prototype</button>
    <button type="button" class="filter-chip" data-filter-value="Completed">Completed</button>
  </div>
</div>

<p id="project-count" class="project-filters__count" aria-live="polite"></p>

<ul class="research-grid project-library" id="project-library">
  {% assign projects_sorted = site.projects | sort: 'date' | reverse %}
  {% for project in projects_sorted %}
  {% assign words = project.content | strip_html | number_of_words %}
  <li class="research-card project-card"
      data-domain="{{ project.domain }}"
      data-status="{{ project.status_key }}"
      data-search="{{ project.title | append: ' ' | append: project.excerpt | append: ' ' | append: project.technologies | join: ' ' | downcase | escape }}">
    <span class="status-badge">{{ project.status }}</span>
    {% if project.featured %}<span class="status-badge status-badge--featured">Featured</span>{% endif %}
    <h3 class="research-card__title"><a href="{{ project.url }}">{{ project.title }}</a></h3>
    <p class="research-card__desc">{{ project.excerpt }}</p>
    <ul class="research-card__tech">
      {% for tech in project.technologies limit:4 %}<li>{{ tech }}</li>{% endfor %}
    </ul>
    <p class="case-study__meta-item">
      {{ project.domain }} &middot;
      {% if words < 180 %}less than 1 min read{% elsif words < 360 %}1 min read{% else %}{{ words | divided_by: site.words_per_minute }} min read{% endif %}
    </p>
    <a href="{{ project.url }}" class="project-teaser__link">Read Case Study &rarr;</a>
  </li>
  {% endfor %}
</ul>

<p id="project-empty" class="project-filters__empty" hidden>No projects match these filters.</p>

</div>
