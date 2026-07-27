---
permalink: /causerie/
redirect_from:
  - /contact
  - /contact/
title: "Contact"
description: "Get in touch to discuss research collaboration, teaching, mentoring, or scientific computing and healthcare analytics projects."
layout: single
author_profile: false
full_width: true
---

<section class="hero hero--centered reveal">
  <div class="hero__content">
    <p class="hero__name" style="font-size: clamp(1.9rem, 4vw, 2.9rem); margin-bottom: 0.75rem;">Contact</p>
    <p class="hero__statement">
      Let&rsquo;s start a conversation.
    </p>
    <p class="hero__why">
      Research, ideas, and collaborations begin with conversations, not forms.
    </p>
    <div class="hero__actions">
      <a href="#schedule" class="btn btn--large">Schedule a Conversation</a>
      <a href="mailto:{{ site.author.email }}" class="btn btn--large btn--outline">Send an Email</a>
    </div>
  </div>
</section>

<div class="page-prose" markdown="1" style="max-width: 1100px; margin: 0 auto; padding: 0 1.5rem 3rem;">

<span class="hero__section-label">Welcome</span>

## A Space for Conversation

I enjoy talking about applied mathematics, scientific computing, artificial intelligence, data science, and healthcare analytics, and about open science, teaching, and interdisciplinary work more generally. If any of what you have seen on this site connects to a question you are working on, a course you are designing, or a collaboration you are considering, I would welcome hearing from you.

A conversation here does not need a fully formed proposal behind it. Some of the most useful exchanges start from a half-formed idea, a specific technical question, or simple curiosity about how two fields might connect.

---

<span class="hero__section-label">Work Together</span>

## Ways We Can Collaborate

<ul class="icon-card-grid">
  {% for item in site.data.collaborationTypes %}
  <li class="icon-card">
    <span class="icon-card__icon"><i class="{{ item.icon }}" aria-hidden="true"></i></span>
    <h3 class="icon-card__title">{{ item.title }}</h3>
    <p class="icon-card__desc">{{ item.description }}</p>
  </li>
  {% endfor %}
</ul>

---

<span class="hero__section-label">Regardless of Career Stage</span>

## Who Should Contact Me

Conversations are welcome from anyone genuinely interested in the questions this site describes, whatever stage of a career or a project you are at.

<ul class="icon-card-grid">
  {% for item in site.data.contactAudiences %}
  <li class="icon-card">
    <span class="icon-card__icon"><i class="{{ item.icon }}" aria-hidden="true"></i></span>
    <h3 class="icon-card__title">{{ item.title }}</h3>
    <p class="icon-card__desc">{{ item.description }}</p>
  </li>
  {% endfor %}
</ul>

---

<span class="hero__section-label">Topics</span>

## What We Can Discuss

<ul class="icon-card-grid icon-card-grid--compact">
  {% for item in site.data.discussionTopics %}
  <li class="icon-card icon-card--compact">
    <span class="icon-card__icon"><i class="{{ item.icon }}" aria-hidden="true"></i></span>
    <h3 class="icon-card__title">{{ item.title }}</h3>
  </li>
  {% endfor %}
</ul>

---

<span class="hero__section-label" id="schedule">Live Conversation</span>

## Schedule a Conversation

Choose a convenient time below if you would like to discuss research, collaboration, teaching, mentoring, or simply exchange ideas. This is one way to reach me among several: use whichever feels most natural.

<ul class="icon-card-grid icon-card-grid--compact">
  <li class="icon-card icon-card--compact">
    <span class="icon-card__icon"><i class="fa-solid fa-hourglass-half" aria-hidden="true"></i></span>
    <h3 class="icon-card__title">30 minutes</h3>
  </li>
  <li class="icon-card icon-card--compact">
    <span class="icon-card__icon"><i class="fa-solid fa-video" aria-hidden="true"></i></span>
    <h3 class="icon-card__title">Online</h3>
  </li>
  <li class="icon-card icon-card--compact">
    <span class="icon-card__icon"><i class="fa-solid fa-calendar-days" aria-hidden="true"></i></span>
    <h3 class="icon-card__title">Flexible scheduling</h3>
  </li>
  <li class="icon-card icon-card--compact">
    <span class="icon-card__icon"><i class="fa-solid fa-language" aria-hidden="true"></i></span>
    <h3 class="icon-card__title">EN &middot; FR &middot; ES</h3>
  </li>
  <li class="icon-card icon-card--compact">
    <span class="icon-card__icon"><i class="fa-solid fa-display" aria-hidden="true"></i></span>
    <h3 class="icon-card__title">Platform via Calendly</h3>
  </li>
</ul>

<div class="rdv-panel">
  <p class="rdv-subtitle">
    We can discuss research ideas, data science strategy, technical mentoring, or collaboration opportunities.
  </p>
  <div class="rdv-chips" aria-label="meeting highlights">
    <span class="rdv-chip">30 minutes</span>
    <span class="rdv-chip">Online</span>
    <span class="rdv-chip">Flexible time zone</span>
  </div>
  <p>
    If the embedded scheduler does not load, use this direct link:
    <a href="https://calendly.com/geobatpo07/30-minutes-de-causerie" target="_blank" rel="noopener noreferrer">
      calendly.com/geobatpo07/30-minutes-de-causerie
    </a>
  </p>
</div>

<div class="rdv-embed-shell">
  <iframe
    class="rdv-embed"
    src="https://calendly.com/geobatpo07/30-minutes-de-causerie?hide_gdpr_banner=1"
    title="Calendly booking - 30-minute causerie"
    loading="lazy"
    referrerpolicy="no-referrer-when-downgrade"
  ></iframe>
</div>

---

<span class="hero__section-label">Other Channels</span>

## Alternative Contact Methods

<ul class="icon-card-grid">
  <li>
    <a href="mailto:{{ site.author.email }}" class="icon-card">
      <span class="icon-card__icon"><i class="fa-solid fa-envelope" aria-hidden="true"></i></span>
      <h3 class="icon-card__title">Email</h3>
      <p class="icon-card__desc">The most direct way to reach me for research, teaching, or collaboration inquiries.</p>
    </a>
  </li>
  <li>
    <a href="https://www.linkedin.com/in/{{ site.author.linkedin }}" target="_blank" rel="noopener noreferrer" class="icon-card">
      <span class="icon-card__icon"><i class="fa-brands fa-linkedin" aria-hidden="true"></i></span>
      <h3 class="icon-card__title">LinkedIn</h3>
      <p class="icon-card__desc">Professional updates and a broader view of my academic and professional path.</p>
    </a>
  </li>
  <li>
    <a href="https://github.com/{{ site.author.github }}" target="_blank" rel="noopener noreferrer" class="icon-card">
      <span class="icon-card__icon"><i class="fa-brands fa-github" aria-hidden="true"></i></span>
      <h3 class="icon-card__title">GitHub</h3>
      <p class="icon-card__desc">Source code, research software, and open-source contributions.</p>
    </a>
  </li>
  <li>
    <a href="{{ site.author.researchgate }}" target="_blank" rel="noopener noreferrer" class="icon-card">
      <span class="icon-card__icon"><i class="fa-brands fa-researchgate" aria-hidden="true"></i></span>
      <h3 class="icon-card__title">ResearchGate</h3>
      <p class="icon-card__desc">Research outputs, working papers, and scientific updates.</p>
    </a>
  </li>
  <li>
    <a href="{{ site.author.orcid }}" target="_blank" rel="noopener noreferrer" class="icon-card">
      <span class="icon-card__icon"><i class="fa-brands fa-orcid" aria-hidden="true"></i></span>
      <h3 class="icon-card__title">ORCID</h3>
      <p class="icon-card__desc">A persistent, verifiable record of my research identity and outputs.</p>
    </a>
  </li>
  <li>
    <span class="icon-card icon-card--disabled" aria-disabled="true">
      <span class="icon-card__icon"><i class="fa-solid fa-graduation-cap" aria-hidden="true"></i></span>
      <h3 class="icon-card__title">Google Scholar</h3>
      <p class="icon-card__desc">Coming soon: a consolidated view of publications and citations.</p>
    </span>
  </li>
  <li>
    <a href="{{ site.author.superprof }}" target="_blank" rel="noopener noreferrer" class="icon-card">
      <span class="icon-card__icon"><i class="fa-solid fa-chalkboard-user" aria-hidden="true"></i></span>
      <h3 class="icon-card__title">Superprof</h3>
      <p class="icon-card__desc">Private tutoring in mathematics, statistics, physics, and algorithmics, with a teaching approach adapted to each student.</p>
    </a>
  </li>
  <li>
    <a href="{{ site.author.credly }}" target="_blank" rel="noopener noreferrer" class="icon-card">
      <span class="icon-card__icon"><i class="fa-solid fa-award" aria-hidden="true"></i></span>
      <h3 class="icon-card__title">Credly</h3>
      <p class="icon-card__desc">Verified digital badges for professional certifications.</p>
    </a>
  </li>
</ul>

---

<span class="hero__section-label">Based In</span>

## Location

<div class="rdv-panel">
  <p class="rdv-title">Paris, France</p>
  <p class="rdv-subtitle">
    Available for both remote and in-person collaborations when appropriate.
  </p>
</div>

---

<span class="hero__section-label">Looking Ahead</span>

## After Our Conversation

A conversation is rarely the end point. Depending on where it leads, it might grow into:

<ul class="hero__eyebrow" style="margin: 1.5rem 0;">
  <li class="hero__chip">Research collaborations</li>
  <li class="hero__chip">Joint publications</li>
  <li class="hero__chip">Open-source projects</li>
  <li class="hero__chip">Teaching opportunities</li>
  <li class="hero__chip">Student supervision</li>
  <li class="hero__chip">Technical mentoring</li>
  <li class="hero__chip">Scientific discussions</li>
  <li class="hero__chip">Future partnerships</li>
</ul>

Not every conversation leads somewhere specific, and that is fine: a good exchange of ideas is worthwhile on its own.

---

<span class="hero__section-label">FAQ</span>

## Frequently Asked Questions

<ul class="faq-list">
  <li class="faq-item">
    <h3 class="faq-item__q">How quickly do you usually reply?</h3>
    <p class="faq-item__a">Generally within a few business days. Scheduling a call directly through Calendly is often the fastest way to talk.</p>
  </li>
  <li class="faq-item">
    <h3 class="faq-item__q">What is the best way to reach you?</h3>
    <p class="faq-item__a">Email for a detailed question or a first introduction; Calendly if you would rather talk it through directly.</p>
  </li>
  <li class="faq-item">
    <h3 class="faq-item__q">What languages can we talk in?</h3>
    <p class="faq-item__a">English, French, or Spanish, whichever is most comfortable for you.</p>
  </li>
  <li class="faq-item">
    <h3 class="faq-item__q">How far in advance should I schedule?</h3>
    <p class="faq-item__a">Availability is generally flexible. Calendly shows open slots in real time, so you can pick whatever works soonest.</p>
  </li>
  <li class="faq-item">
    <h3 class="faq-item__q">What time zone are you in?</h3>
    <p class="faq-item__a">Central European Time (CET/CEST). Calendly automatically converts available slots to your local time zone.</p>
  </li>
</ul>

</div>

<section class="hero hero--centered reveal">
  <div class="hero__content">
    <p class="hero__name" style="font-size: clamp(1.6rem, 3.4vw, 2.4rem); margin-bottom: 0.9rem;">Let&rsquo;s Connect</p>
    <p class="hero__statement" style="max-width: 42rem;">
      Many meaningful ideas begin with a simple conversation. Whether you want to discuss research, exchange
      ideas, explore a collaboration, or simply connect over shared scientific interests, I would be glad to
      hear from you.
    </p>
    <div class="hero__actions">
      <a href="#schedule" class="btn btn--large">Schedule a Conversation</a>
      <a href="mailto:{{ site.author.email }}" class="btn btn--large btn--outline">Send an Email</a>
    </div>
  </div>
</section>
