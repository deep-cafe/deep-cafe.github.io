---
layout: home
title: "Welcome to the Deep Cafe"
---

## Noteworthy

<ul class="with-bullets">
  {% for item in site.data.noteworthy.items %}
    <li><a href="{{ item | last }}">{{ item | first }}</a></li>
  {% endfor %}
</ul>

