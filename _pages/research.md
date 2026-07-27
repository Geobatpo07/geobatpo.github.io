---
layout: single
permalink: /research/
title: "Research"
description: "Research questions, themes, and current work in mathematical modelling, scientific computing, artificial intelligence, and healthcare analytics, with research outputs and open-source software."
full_width: true
author_profile: false
redirect_from:
  - /publications/
  - /publications.html
---

<section class="hero hero--centered reveal">
  <div class="hero__content">
    <p class="hero__name" style="font-size: clamp(2rem, 4.5vw, 3.4rem); margin-bottom: 0.75rem;">Research</p>
    <p class="hero__statement">
      Exploring complex systems through mathematics, scientific computing, data science, and artificial intelligence.
    </p>
  </div>
</section>

<div class="page-prose" markdown="1" style="max-width: 1100px; margin: 0 auto; padding: 0 1.5rem 2rem;">

I am interested in understanding complex systems through mathematical models, computational methods, and intelligent algorithms. Whether the application concerns environmental dynamics, healthcare, or scientific data infrastructure, the underlying scientific challenge stays the same: constructing models that are mathematically rigorous, computationally reliable, and useful for decision making. Everything below follows from that one challenge.

---

<span class="hero__section-label">The Centerpiece</span>

## Research Questions

I don't organize my work around projects first. Projects exist because of these questions.

<ul class="research-grid">
  <li class="research-card">
    <h3 class="research-card__title">How can mathematical models better represent complex environmental systems?</h3>
    <p class="research-card__desc">Seasonal forcing, delayed effects, and incomplete measurements make environmental systems resistant to simple models. I'm interested in how much structure a compartmental approach can capture before it needs to become something more complex.</p>
    <p class="research-card__project">Related: <span>Mathematical Modelling · Environmental Modelling</span></p>
  </li>
  <li class="research-card">
    <h3 class="research-card__title">How can scientific computing improve the reliability of numerical simulations?</h3>
    <p class="research-card__desc">A simulation is only as trustworthy as the stability of the scheme producing it. I look at how discretization choices (finite differences, operator splitting) decide whether a result reflects the physics or just numerical artifacts.</p>
    <p class="research-card__project">Related: <span>Scientific Computing · Numerical Analysis</span></p>
  </li>
  <li class="research-card">
    <h3 class="research-card__title">How can artificial intelligence support scientific discovery while remaining transparent and reproducible?</h3>
    <p class="research-card__desc">Machine learning can find structure I wouldn't specify by hand, but only if it stays interpretable enough to validate. I'm interested in architectures that combine symbolic reasoning with learned components without losing that transparency.</p>
    <p class="research-card__project">Related: <span>Artificial Intelligence · Machine Learning</span></p>
  </li>
  <li class="research-card">
    <h3 class="research-card__title">How can data infrastructures improve reproducibility in computational research?</h3>
    <p class="research-card__desc">Most data platforms are built for business scale. I'm interested in what changes when reproducibility, not throughput, is the primary design constraint.</p>
    <p class="research-card__project">Related: <span>Scientific Data Infrastructure</span></p>
  </li>
  <li class="research-card">
    <h3 class="research-card__title">How can mathematical modelling contribute to healthcare decision support?</h3>
    <p class="research-card__desc">A model that informs a health decision carries a different burden of proof than one that doesn't. I'm interested in decision-support tools precise enough to be useful and honest enough to be questioned.</p>
    <p class="research-card__project">Related: <span>Healthcare Analytics · Biostatistics</span></p>
  </li>
</ul>

---

<span class="hero__section-label">The Vocabulary</span>

## Research Themes

Ten perspectives on the same underlying problem, not a checklist of skills.

<ul class="research-grid">
  {% for theme in site.data.researchThemes %}
  <li class="research-card">
    <h3 class="research-card__title">{{ theme.title }}</h3>
    <p class="research-card__desc"><strong>Why it matters.</strong> {{ theme.why }}</p>
    <p class="research-card__desc"><strong>Scientific challenge.</strong> {{ theme.challenge }}</p>
    <p class="research-card__desc"><strong>Current application.</strong> {{ theme.application }}</p>
    <p class="research-card__project">{{ theme.connection }}</p>
  </li>
  {% endfor %}
</ul>

---

<span class="hero__section-label">Current Work</span>

## Current Research

Presented as ongoing scientific programs, not finished projects.

<div class="project-teasers reveal">
  <div class="project-teaser">
    <h3>Mathematical Modelling of Chlordecone Contamination</h3>
    <p class="hero__why" style="margin: 0 0 0.9rem;">Can a compartmental model capture seasonal, rainfall-driven chlordecone exposure precisely enough to inform public-health thresholds?</p>
    <p><strong>Motivation.</strong> Chronic soil and food-chain contamination in Guadeloupe needs quantitative exposure estimates, not just qualitative risk categories.</p>
    <p><strong>Methodology.</strong> Non-autonomous compartmental ODE systems with seasonal forcing, explored through interactive simulation.</p>
    <p><strong>Expected contribution.</strong> A reusable modelling framework for seasonal environmental exposure that could generalize beyond chlordecone.</p>
    <p class="project-teaser__status"><span class="project-teaser__status-dot"></span>Active research, 2025&ndash;2026</p>
    <ul class="research-card__tech"><li>R</li><li>Shiny</li><li>ODE Systems</li></ul>
    <a href="/projects/chlordecone/" class="project-teaser__link">View project &rarr;</a>
  </div>
  <div class="project-teaser">
    <h3>Character Theory over Finite Fields</h3>
    <p class="hero__why" style="margin: 0 0 0.9rem;">What do the orthogonality relations of additive characters reveal about structure in finite fields?</p>
    <p><strong>Motivation.</strong> A theoretical thread that keeps the mathematical foundation sharp: pure structure, no application pressure.</p>
    <p><strong>Methodology.</strong> Formal construction of additive characters and their orthogonality relations, worked through directly.</p>
    <p><strong>Expected contribution.</strong> A clear, presentable account of a foundational result in finite field theory.</p>
    <p class="project-teaser__status"><span class="project-teaser__status-dot"></span>Presented, ongoing interest</p>
    <ul class="research-card__tech"><li>Pure Mathematics</li><li>Group Theory</li></ul>
    <a href="/research/character-theory-finite-fields/" class="project-teaser__link">View case study &rarr;</a>
  </div>
  <div class="project-teaser">
    <h3>Scientific Assistant</h3>
    <p class="hero__why" style="margin: 0 0 0.9rem;">Can a multi-agent AI system combine symbolic mathematics, numerical methods, and literature retrieval without sacrificing reproducibility?</p>
    <p><strong>Motivation.</strong> Reproducible research needs tooling that doesn't outsource judgment to an opaque model.</p>
    <p><strong>Methodology.</strong> A local-first, multi-agent architecture combining symbolic reasoning, numerical methods, and RAG-based document intelligence.</p>
    <p><strong>Expected contribution.</strong> A transparent AI research assistant framework other researchers could adapt.</p>
    <p class="project-teaser__status"><span class="project-teaser__status-dot"></span>Active development, 2024&ndash;2026</p>
    <ul class="research-card__tech"><li>Python</li><li>Multi-agent Systems</li><li>RAG</li></ul>
    <a href="/projects/scientific-assistant/" class="project-teaser__link">View project &rarr;</a>
  </div>
  <div class="project-teaser">
    <h3>DataHut-DuckHouse</h3>
    <p class="hero__why" style="margin: 0 0 0.9rem;">What does research-grade data infrastructure look like when reproducibility, not scale, is the primary constraint?</p>
    <p><strong>Motivation.</strong> Most analytics stacks optimize for business scale, not scientific reproducibility.</p>
    <p><strong>Methodology.</strong> A multi-tenant analytics platform integrating DuckDB, Apache Iceberg, Arrow Flight, dbt, and Trino.</p>
    <p><strong>Expected contribution.</strong> An open-source reference architecture for reproducible, modular research data infrastructure.</p>
    <p class="project-teaser__status"><span class="project-teaser__status-dot"></span>Active, 12+ GitHub stars</p>
    <ul class="research-card__tech"><li>DuckDB</li><li>Apache Iceberg</li><li>dbt</li><li>Trino</li></ul>
    <a href="/projects/datahut/" class="project-teaser__link">View project &rarr;</a>
  </div>
  <div class="project-teaser">
    <h3>Healthcare Decision-Support Systems</h3>
    <p class="hero__why" style="margin: 0 0 0.9rem;">Can a lightweight, interpretable model give clinicians a trustworthy pre-triage signal without replacing their judgment?</p>
    <p><strong>Motivation.</strong> Emergency and public-health contexts need decision support that is fast, interpretable, and honest about its own uncertainty.</p>
    <p><strong>Methodology.</strong> A Random Forest-based triage prioritization tool, developed as a second angle on the same underlying question as the chlordecone work: trustworthy models for health decisions.</p>
    <p><strong>Expected contribution.</strong> A template for interpretable, validated decision-support tools in resource-constrained clinical settings.</p>
    <p class="project-teaser__status"><span class="project-teaser__status-dot"></span>Prototype complete</p>
    <ul class="research-card__tech"><li>C++</li><li>Random Forest</li><li>Python</li></ul>
    <a href="/projects/medical-triage-system/" class="project-teaser__link">View project &rarr;</a>
  </div>
</div>

---

<span class="hero__section-label">Methodology</span>

## Research Framework

How a question here typically becomes an answer.

<ol class="scientific-timeline">
  <li><span class="scientific-timeline__label">Scientific Question</span></li>
  <li><span class="scientific-timeline__label">Mathematical Model</span></li>
  <li><span class="scientific-timeline__label">Numerical Method</span></li>
  <li><span class="scientific-timeline__label">Scientific Computing</span></li>
  <li><span class="scientific-timeline__label">Data</span></li>
  <li><span class="scientific-timeline__label">Machine Learning</span></li>
  <li><span class="scientific-timeline__label">Validation</span></li>
  <li><span class="scientific-timeline__label">Decision Support</span></li>
</ol>

---

<span class="hero__section-label">Evidence</span>

## Research Outputs

Publications are one research output among several, alongside software, technical notes, and the projects above.

{% if site.author.googlescholar %}
<p>You can also find my articles on <a href="{{ site.author.googlescholar }}" target="_blank" rel="noopener noreferrer">my Google Scholar profile</a>.</p>
{% endif %}

{% include base_path %}
{% assign publications_sorted = site.publications | sort: 'date' | reverse %}

{% if site.publication_category %}
  {% for category in site.publication_category %}
    {% assign title_shown = false %}

    {% for post in publications_sorted %}
      {% if post.category != category[0] %}
        {% continue %}
      {% endif %}
      {% assign venue_down = post.venue | default: '' | downcase %}
      {% assign title_down = post.title | default: '' | downcase %}
      {% assign is_preparation = false %}
      {% if venue_down contains 'in preparation' or venue_down contains 'en preparation' or venue_down contains 'en préparation' or title_down contains 'in preparation' or title_down contains 'en preparation' or title_down contains 'en préparation' %}
        {% assign is_preparation = true %}
      {% endif %}
      {% if is_preparation %}
        {% continue %}
      {% endif %}
      {% unless title_shown %}
<h3>{{ category[1].title }}</h3>
        {% assign title_shown = true %}
      {% endunless %}
      {% include archive-single.html %}
    {% endfor %}

    {% for post in publications_sorted %}
      {% if post.category != category[0] %}
        {% continue %}
      {% endif %}
      {% assign venue_down = post.venue | default: '' | downcase %}
      {% assign title_down = post.title | default: '' | downcase %}
      {% assign is_preparation = false %}
      {% if venue_down contains 'in preparation' or venue_down contains 'en preparation' or venue_down contains 'en préparation' or title_down contains 'in preparation' or title_down contains 'en preparation' or title_down contains 'en préparation' %}
        {% assign is_preparation = true %}
      {% endif %}
      {% unless is_preparation %}
        {% continue %}
      {% endunless %}
      {% unless title_shown %}
<h3>{{ category[1].title }}</h3>
        {% assign title_shown = true %}
      {% endunless %}
      {% include archive-single.html %}
    {% endfor %}
  {% endfor %}
{% endif %}

---

<span class="hero__section-label">Instruments, Not Products</span>

## Research Software

Software here is built to make a scientific question tractable, not to ship a product.

<ul class="research-grid">
  <li class="research-card">
    <h3 class="research-card__title">Scientific Assistant</h3>
    <p class="research-card__desc">A local-first, multi-agent framework for reproducible scientific reasoning: symbolic mathematics, numerical methods, and document intelligence in one auditable pipeline.</p>
    <a href="/projects/scientific-assistant/" class="project-teaser__link">View project &rarr;</a>
  </li>
  <li class="research-card">
    <h3 class="research-card__title">DataHut-DuckHouse</h3>
    <p class="research-card__desc">A modular analytics platform built for reproducibility first: the data infrastructure underneath every other research program here.</p>
    <a href="/projects/datahut/" class="project-teaser__link">View project &rarr;</a>
  </li>
  <li class="research-card">
    <h3 class="research-card__title">Chlordecone Simulation Toolkit</h3>
    <p class="research-card__desc">An interactive Shiny instrument for exploring seasonal exposure scenarios, built so the model's assumptions are visible, not just its outputs.</p>
    <a href="/projects/chlordecone/" class="project-teaser__link">View project &rarr;</a>
  </li>
  <li class="research-card">
    <h3 class="research-card__title">Medical Triage System</h3>
    <p class="research-card__desc">A Random Forest-based decision-support instrument for pre-triage prioritization, designed for interpretability over raw accuracy.</p>
    <a href="/projects/medical-triage-system/" class="project-teaser__link">View project &rarr;</a>
  </li>
</ul>

---

<span class="hero__section-label">Commitments</span>

## Open Science

None of this work is credible to me if it can't be checked. That means code that runs for someone other than me, methods documented well enough to be challenged, and results that don't depend on a specific machine to reproduce. GitHub hosts the code and technical notes; <a href="https://stories.geovanylaguerre.net" target="_blank" rel="noopener noreferrer">Geo's Stories</a> hosts the less formal record of how the ideas actually developed.

<ul class="hero__eyebrow" style="margin: 1.5rem 0;">
  <li class="hero__chip">Version Control</li>
  <li class="hero__chip">Open Source</li>
  <li class="hero__chip">Reproducible Pipelines</li>
  <li class="hero__chip">Documented Methods</li>
  <li class="hero__chip">Public Technical Notes</li>
</ul>

---

<span class="hero__section-label">Directions, Not Promises</span>

## Future Research

<ul class="hero__eyebrow" style="margin: 1.5rem 0;">
  <li class="hero__chip">AI for Science</li>
  <li class="hero__chip">Scientific Machine Learning</li>
  <li class="hero__chip">Environmental Mathematics</li>
  <li class="hero__chip">Healthcare Analytics</li>
  <li class="hero__chip">Computational Biology</li>
  <li class="hero__chip">Decision Support Systems</li>
  <li class="hero__chip">Digital Health</li>
  <li class="hero__chip">Mathematical Epidemiology</li>
</ul>

These are directions I want to grow into, not results I'm claiming. The throughline that got me here (read on the [Scientific Journey](/about/) page) is the same one pointing toward them.

</div>

<section class="hero hero--centered reveal">
  <div class="hero__content">
    <p class="hero__statement" style="font-size: clamp(1.2rem, 2.2vw, 1.5rem); color: var(--global-text-color);">
      I welcome collaboration with universities, research laboratories, healthcare institutions, industry, public organizations, students, and interdisciplinary teams.
    </p>
    <div class="hero__actions">
      <a href="/causerie/" class="btn btn--large">Get in Touch</a>
    </div>
  </div>
</section>
