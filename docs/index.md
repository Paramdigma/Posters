---
title: Paramdigma Workshop Posters
---

# Existing posters

{% for page in site.pages %}
{% unless page.url == '/' %}
- [{{page.title}}]({{page.url | relative_url }})
  {% endunless %}
  {% endfor %}
