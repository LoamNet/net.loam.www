---
permalink: /resources/websites/
layout: feature
title: Website Setup Guide
description: A step by step living guide with pictures that teaches you how to set up a free or very low cost website using Cloudflare, Google Domains, and Github!
tags: loam, loam llc, guide, guides, website, site, blog, blogging, webpage, github, github pages, cloudflare, google, google domains
---
{% assign thepost = site.posts | where:"specialtag","website-guide" %}
{% for post in thepost %}
 <div class="text-center">
  <h1>Website Setup Guide</h1>
 </div>
 <p class="maxed">
  This is a living page that contains the most up-to-date guide that Loam has on setting up a website! Currently, the blog post this is based on is located <a href="{{ post.url }}">here</a>!
 </p>
 <br/>
 <hr/>
 <br/>
 <!-- <p><strong>{{ post.date | date_to_string }} - {{ thepost.author }}</strong></p> -->
 {{ post.content }}
{% endfor %}
