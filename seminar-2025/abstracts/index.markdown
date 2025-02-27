---
layout: page
title: Abstracts
---

# Doctoral Seminar 2025 Abstracts

<div class="abstract-list">
<ul>
  {% for abstract in site.abstracts | sort: 'title' %}
    <li>
      <a href="{{ abstract.url }}">{{ abstract.title | default: abstract.name }}</a>
      {% if abstract.author %} <em>by {{ abstract.author }}</em> {% endif %}
    </li>
  {% endfor %}
</ul>
</div>