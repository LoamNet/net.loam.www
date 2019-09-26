---
permalink: /resources/websites/
layout: feature
title: Website Setup Guide
description: A step by step guide with pictures on how to set up a free or very low cost website, with SSL Certificate to make all connections HTTPS, using Cloudflare, Google Domains, and Github!
keywords: loam, loam llc, guide, guides, website, site, blog, blogging, webpage, github, github pages, cloudflare, google, google domains
---
{% assign thepost = site.posts | where:"specialtag","websites-on-a-budget" %}
{% for post in thepost %}
 <div class="text-center">
  <h1>{{ post.title }}</h1>
 </div>
 <!-- <p><strong>{{ post.date | date_to_string }} - {{ thepost.author }}</strong></p> -->
 {{ post.content }}
{% endfor %}
