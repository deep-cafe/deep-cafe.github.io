---
layout: default
title: "Inspiration"
---

<ul class="with-bullets">
  {% for item in site.data.inspiration.items %}
    <li><a href="{{ item.link }}">{{ item.name }}</a></li>
  {% endfor %}
</ul>

