---
layout: default
title: Paramdigma Workshop Posters
---

# Existing posters

{% for poster in site.posters %}
[_{{poster.dates.day}} {{poster.dates.month}} {{poster.dates.year}}_ - **{{poster.title}}**]({{poster.url | relative_url }})
{% endfor %}
