---
title       : Data Science Capstone
subtitle    : A text prediction algorithm for small devices
author      : Taiki Sakai
job         : Data Scientist Extraordinaire
framework   : revealjs        # {io2012, html5slides, shower, dzslides, ...}
revealjs    : {theme: sky}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}sli
knit        : slidify::knit2slides

--- 
## Data Science Capstone

#### A text prediction algorithm for small devices
<p> By Taiki Sakai </p>

--- .class #id 

## The Problem

Text prediction is something that can just simply make our lives easier.
In a world where time is money, something as seemingly insignificant as shortening the
time it takes to write a text message can have a positive impact. By
being able to accurately predict the next word a person wants to type, we
can drastically reduce the time dedicated to this simple task. 

---

## The Solution

I've created an app that can quickly and accurately make these predictions. It 
works by using the most recent two words the person typed to try and guess
what will come next. Using a dataset of over **one million** lines of text
from Twitter, new articles, and blogs, I generated a history of three- and
two-word phrases that can be used to make predictions. This is probably easier
to understand with some examples...

--- 

## How it Works

<img src=left.png style=float:left;width:48%;height:48%">
<img src=right.png style=float:right;width:48%;height:48%">

Here you can see two examples. On the left, 'bake a' is the start
of many three-word phrases. The app shows the three most common ways to
finish these two words. On the right, 'bake wall' is not the start of
many three-word phrases. When there are no three-word phrase, the model
will instead guess based on two-word phrases. In this case 'wall street'
is a very common two word phrase, and so it is shown as an option.

---

## Using the App

Using the app is simple. Just open the web page, wait for 'Loading app... Complete!',
then you can start typing your phrase and hit the predict button.
You'll get a choice of three different words, and it tends to do a good job of making
reasonable guesses. You probably noticed that it takes a while to load - this is not a problem!
The website has to load ~150mb of data every time you open the app, but in practice
this small amount of data will already be loaded on to your device. The important part
is how fast it can make the prediction, and that part is ***fast!***

