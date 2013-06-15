---
layout: default
title: Typography
---

# Typography - h1

Paragraphs. This is a **markdown** *version* of the homepage. Jekyll should be able to deal with it appropriately.

- bullet lists
- are the
- bestest

Watch out for manual line breaks, which are the result of two spaces  
at the end of a line.
All other kinds of line breaks will be ignored.

Want a [link]({{ site.root }})? We've [got]({{ site.root }}) [links]({{ site.root }}).

---

Horizontal rules are also possible, but maybe you should just use a new heading?

## Heading 2 - h2

Paragraph after an h2. The following text is in a blockquote

> Blockquoting like it's my job. What what. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa, dicta voluptate accusantium repellendus reiciendis labore maiores. Eius, incidunt porro neque omnis recusandae animi iure esse nostrum inventore asperiores? Optio, aspernatur.

> Don't forget to cite that noise. <cite>[Michael Scott][1]</cite>

Paragraph to explain that quote.

- Bullet list with paragraphs.

    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto, ut, repudiandae harum provident explicabo molestiae rerum itaque libero saepe debitis tempore reprehenderit illum dicta officiis ab veritatis quos nihil quod!

- This will be in a paragraph, but it's only one line

That's the end of the bullet list with paragraphs.

### List of all posts - h3
{% for post in site.posts %}
- {{ post.date | date_to_string }} &raquo; [{{ post.title }}]({{ post.url }})
{% endfor %}

[1]:http://www.google.com/ "Michael Scott" 
