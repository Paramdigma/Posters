---
layout: default
title: Paramdigma Workshop Posters
---

# Existing posters

{% for poster in site.posters %}
[{{poster.workshop.dates.day}} {{poster.workshop.dates.month}} {{poster.workshop.dates.year}} - **{{poster.title}}**]({{poster.url | relative_url }})
{% endfor %}
