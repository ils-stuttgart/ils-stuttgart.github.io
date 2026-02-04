---
layout: page
title: Abstracts
---

# Doctoral Seminar 2025 Abstracts

<div class="abstract-list">
<ul>
  {% assign abstracts_2025 = site.abstracts | where: "year", 2025 | sort: "title" %}
  {% for abstract in abstracts_2025 %}
    <li>
      <a href="{{ abstract.url }}">{{ abstract.title | default: abstract.name }}</a>
      {% if abstract.author %} <em>by {{ abstract.author }}</em> {% endif %}
    </li>
  {% endfor %}
</ul>
</div>