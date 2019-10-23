---
title: Paramdigma Workshop Posters
---

# Existing posters

{% for page in site.pages %}
{% if page.title %}
{% unless page.url == '/' %}
[{{page.workshop.date.day}} {{page.workshop.date.month}} {{page.workshop.date.year}} - **{{page.title}}**]({{page.url | relative_url }})
{% endunless %}
{% endif %}
{% endfor %}
