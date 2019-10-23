---
layout: page
title: Paramdigma Workshop Posters
---

# Existing posters

{% for poster in site.posters %}
[{{poster.workshop.date.day}} {{poster.workshop.date.month}} {{poster.workshop.date.year}} - **{{poster.title}}**]({{poster.url | relative_url }})
{% endfor %}
