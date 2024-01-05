---
layout: default
title: "Tags"
published: false
---

{% capture tags %}{% for tag in site.tags %}|{{ tag | first }}#{{ tag[1].size }}{% endfor %}{% endcapture %}
{% assign sorted_tags = tags | split: '|' | sort %}

<ul class="with-bullets">
  {% for tag in sorted_tags %}
    {% if tag != "" %}
      {% assign tag_item = tag | split: '#' %}
      <li><a href="/tags/{{ tag_item | first | slugify }}"><span>{{ tag_item | first | capitalize }}</span>&nbsp;<small>({{ tag_item | last }})</small></a></li>
    {% endif %}
  {% endfor %}
</ul>

