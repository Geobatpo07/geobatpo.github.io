---
permalink: /
title: "Applied Mathematics, Data Science & AI Research"
author_profile: false
full_width: true
---

<section class="hero reveal">
  <div class="hero__content">
    <ul class="hero__eyebrow">
      <li class="hero__chip">Applied Mathematics</li>
      <li class="hero__chip-arrow" aria-hidden="true">&rarr;</li>
      <li class="hero__chip">Mathematical Modelling</li>
      <li class="hero__chip-arrow" aria-hidden="true">&rarr;</li>
      <li class="hero__chip">Scientific Computing</li>
      <li class="hero__chip-arrow" aria-hidden="true">&rarr;</li>
      <li class="hero__chip">Data Science</li>
      <li class="hero__chip-arrow" aria-hidden="true">&rarr;</li>
      <li class="hero__chip">Artificial Intelligence</li>
      <li class="hero__chip-arrow" aria-hidden="true">&rarr;</li>
      <li class="hero__chip">Healthcare Analytics</li>
    </ul>

    <h1 class="hero__name">Geovany Batista Polo Laguerre</h1>

    <p class="hero__statement">
      Mathematics is the foundation everything else stands on. I build outward from it, through
      scientific computing, artificial intelligence, and healthcare analytics, to turn complex
      systems into decisions people can trust.
    </p>

    <p class="hero__why">
      A model earns trust only when its mathematics does. That conviction is what connects every
      project on this page, from differential equations to machine learning to public health.
    </p>

    <div class="hero__actions">
      <a href="/research/" class="btn btn--large">Research</a>
      <a href="/projects/" class="btn btn--large btn--outline">Projects</a>
      <a href="/teaching/" class="btn btn--large btn--outline">Teaching</a>
      <a href="/files/Profile.pdf" class="btn btn--large btn--outline">Download CV</a>
    </div>
  </div>

  <div class="hero__portrait">
    <div class="hero__portrait-frame">
      <svg class="hero__portrait-bg" viewBox="0 0 320 320" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
        <defs>
          <pattern id="heroGrid" width="32" height="32" patternUnits="userSpaceOnUse">
            <path d="M 32 0 L 0 0 0 32" fill="none" stroke="rgba(255,255,255,0.08)" stroke-width="1"/>
          </pattern>
        </defs>
        <rect width="320" height="320" fill="url(#heroGrid)"/>
        <text x="22" y="72" font-family="Georgia, serif" font-size="46" fill="rgba(103,232,249,0.20)">&#8706;</text>
        <text x="222" y="58" font-family="Georgia, serif" font-size="36" fill="rgba(103,232,249,0.16)">&#931;</text>
        <text x="28" y="272" font-family="Georgia, serif" font-size="42" fill="rgba(103,232,249,0.16)">&#8747;</text>
        <text x="232" y="272" font-family="Georgia, serif" font-size="38" fill="rgba(103,232,249,0.18)">&#8711;</text>
        <polyline points="0,180 40,180 55,138 70,222 85,180 130,180 145,158 160,202 175,180 320,180" fill="none" stroke="rgba(103,232,249,0.4)" stroke-width="2"/>
      </svg>
      <img src="/images/Geo_04.png" alt="Portrait of Geovany Batista Polo Laguerre" />
    </div>
  </div>
</section>

<section class="reveal" id="research-highlights" style="max-width: 1200px; margin: 0 auto; padding: 0 1.5rem 2rem;">
  <span class="hero__section-label">What I Work On</span>
  <h2 class="hero__section-heading">Research Highlights</h2>
  <p>
    These eight areas are not separate disciplines. They are complementary perspectives on the same
    underlying question: how to study complex systems rigorously enough to trust the answers
    they give us.
  </p>

  <ul class="research-grid">
    {% for item in site.data.research %}
    <li class="research-card">
      <h3 class="research-card__title">{{ item.title }}</h3>
      <p class="research-card__desc">{{ item.description }}</p>
      <ul class="research-card__tech">
        {% for tech in item.technologies %}<li>{{ tech }}</li>{% endfor %}
      </ul>
      <p class="research-card__project">Current: <span>{{ item.project }}</span></p>
    </li>
    {% endfor %}
  </ul>

  <p class="hero__why" style="margin-top: 2rem;">
    Individually, each is a discipline. Together, they form one way of thinking about complex
    systems: the profile below is what that balance looks like in practice.
  </p>
</section>

<div style="max-width: 1200px; margin: 0 auto; padding: 0 1.5rem;" markdown="1">

<span class="hero__section-label">Interdisciplinary Balance</span>

## Scientific Profile

Read this less as a skills inventory and more as a map of balance. Each axis depends on the others: mathematical modelling means little without the computing to test it, and computing means little without the statistical grounding to trust its output.

{% include chart.html id="radarChart" height="480px" data=site.data.radarChart %}

<span class="hero__section-label" style="margin-top: 2rem; display: block;">Toolkit</span>

The tools that make this balance operational:

<ul class="research-card__tech" style="margin-bottom: 2rem;">
  <li>Python</li><li>R</li><li>SQL</li><li>C++</li><li>TypeScript</li><li>DuckDB</li><li>Apache Iceberg</li><li>Trino</li><li>dbt</li><li>Shiny</li><li>TensorFlow</li><li>Scikit-learn</li><li>PyTorch</li>
</ul>

The sections that follow show that balance applied to real problems: the projects currently shaping my research identity.

---

<span class="hero__section-label">Current Work</span>

## Active Projects

Three projects currently define where my research is headed.

<div class="project-teasers reveal">
  <div class="project-teaser">
    <h3>Chlordecone Mathematical Modelling</h3>
    <p><strong>Problem.</strong> Chronic chlordecone contamination in Guadeloupe's soils and food chains poses a long-term public-health risk.</p>
    <p><strong>Scientific challenge.</strong> Modelling seasonal, non-autonomous environmental transfer and human exposure pathways with compartmental ODE systems.</p>
    <p class="project-teaser__status"><span class="project-teaser__status-dot"></span>Active research, 2025&ndash;2026</p>
    <a href="/projects/chlordecone/" class="project-teaser__link">View project &rarr;</a>
  </div>
  <div class="project-teaser">
    <h3>Scientific Assistant</h3>
    <p><strong>Problem.</strong> Reproducible scientific research means stitching together symbolic mathematics, numerical methods, and literature, usually done by hand.</p>
    <p><strong>Scientific challenge.</strong> Building a local-first, multi-agent AI framework combining symbolic reasoning, numerical methods, and RAG-based document intelligence without sacrificing reproducibility.</p>
    <p class="project-teaser__status"><span class="project-teaser__status-dot"></span>Active development, 2024&ndash;2026</p>
    <a href="/projects/scientific-assistant/" class="project-teaser__link">View project &rarr;</a>
  </div>
  <div class="project-teaser">
    <h3>DataHut-DuckHouse</h3>
    <p><strong>Problem.</strong> Research-grade modelling deserves engineering-grade infrastructure underneath it, but most analytics stacks aren't built for that.</p>
    <p><strong>Scientific challenge.</strong> Designing a multi-tenant, scalable analytics platform integrating DuckDB, Apache Iceberg, Arrow Flight, dbt, and Trino.</p>
    <p class="project-teaser__status"><span class="project-teaser__status-dot"></span>Active, 12+ GitHub stars</p>
    <a href="https://github.com/Geobatpo07/datahut-duckhouse" target="_blank" rel="noopener noreferrer" class="project-teaser__link">View project &rarr;</a>
  </div>
</div>

<p class="hero__why" style="margin-top: 2rem;">
  Behind each of these is also a less formal record of how the thinking actually unfolded,
  which is what Geo's Stories is for.
</p>

---

<span class="hero__section-label">Beyond The Models</span>

## Geo's Stories

<section class="rdv-panel">
  <p class="rdv-subtitle">
    Every research project also has a human story: the ideas, experiments, unexpected
    discoveries, failures, and lessons learned along the way. I write about that side of the work
    on Geo's Stories.
  </p>
  <div class="rdv-chips">
    <span class="rdv-chip">Ideas</span>
    <span class="rdv-chip">Experiments</span>
    <span class="rdv-chip">Discoveries</span>
    <span class="rdv-chip">Failures</span>
    <span class="rdv-chip">Lessons Learned</span>
  </div>
  <p>
    <a href="https://stories.geovanylaguerre.net" target="_blank" rel="noopener noreferrer" class="btn btn--outline">Explore Geo's Stories</a>
  </p>
</section>

---

<span class="hero__section-label">Get In Touch</span>

## Research Collaboration

Good research rarely happens alone. I'm always open to interdisciplinary collaboration, knowledge sharing, and conversations that might turn into something more, with labs, supervisors, or fellow researchers working on related problems. For detailed background, see my [CV](/cv/) or explore my [Scientific Journey](/about/).

<section class="rdv-panel">
  <h3 class="rdv-title">Research Conversation</h3>
  <p class="rdv-subtitle">
    A 30-minute conversation about research ideas, collaboration, or a specific data or modelling problem you're working through.
  </p>
  <p>
    <a href="/causerie/">Open the scheduling page</a> or use the direct Calendly link:
    <a href="https://calendly.com/geobatpo07/30-minutes-de-causerie" target="_blank" rel="noopener noreferrer">
      calendly.com/geobatpo07/30-minutes-de-causerie
    </a>
  </p>
</section>


</div>
