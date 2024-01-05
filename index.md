---
layout: home
title: "Welcome to the Deep Cafe"
---

## Inspiration

<ul class="with-bullets">
  {% for item in site.data.inspiration.items %}
    <li><a href="{{ item | last }}">{{ item | first }}</a></li>
  {% endfor %}
</ul>

