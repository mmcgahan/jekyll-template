---
layout: default
title: The site, reloaded
---

# Home

This is a markdown version of the homepage. Jekyll should be able to deal with it appropriately.

* bullet lists
* are the
* bestest

# Here are some great things I've written

{% for post in site.posts %}
* {{ post.date | date_to_string }} &raquo; [{{ post.title }}]({{ post.url }})
{% endfor %}

and

{% for post in site.tags.nav %}
* {{ post.title }}
{% endfor %}
the end
