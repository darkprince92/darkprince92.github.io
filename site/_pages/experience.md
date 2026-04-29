---
layout: page
title: experience
permalink: /experience/
description: Research and industry experience of Mohammad Nurullah Patwary.
nav: true
nav_order: 4
---

{% assign cv = site.data.cv.cv %}

<div class="cv">
  {% assign research_entries = cv.sections["Research Experience"] %}
  {% if research_entries.size > 0 %}
    <div class="card mt-3 p-3">
      <h3 class="card-title font-weight-medium">Research</h3>
      <div>
        {% assign entries = research_entries %}
        {% include cv/experience.liquid %}
      </div>
    </div>
  {% endif %}

  {% assign industry_entries = cv.sections.Experience %}
  {% if industry_entries.size > 0 %}
    <div class="card mt-3 p-3">
      <h3 class="card-title font-weight-medium">Industry</h3>
      <div>
        {% assign entries = industry_entries %}
        {% include cv/experience.liquid %}
      </div>
    </div>
  {% endif %}
</div>
