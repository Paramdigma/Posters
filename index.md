---
layout: default
title: Paramdigma Workshop Posters
---

# Existing posters

{% for poster in site.posters %}
[{{poster.dates.day}} {{poster.dates.month}} {{poster.dates.year}} - **{{poster.title}}**]({{poster.url | relative_url }})
{% endfor %}
