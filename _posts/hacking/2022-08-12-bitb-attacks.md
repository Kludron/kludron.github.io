---
layout: post
title: Browser in the Browser attacks
author: Kludron
summary: "A quick view on what Browser-In-The-Browser (BITB) attacks are and how to spot one."
pin: true
published: true
categories: [Security, Hacking]
tags: [Phishing]
icon:
  path: /assets/img/bitb-phishing-vs-real.png
  width: 800
  height: 500
  alt: "Fake vs Real Facebook Authentication pop-up (sourced from mrd0x.com)"
---

## What is a Browser-In-The-Browser (BITB) attack?

A browser in a browser attack, put simply, is a phishing technique
that allows an attacker to spawn a pop-up window in the users browser that 
appears to link to a legitimate website. It's primarily used to mimic
legitimate third-party authentication methods in an attempt to steal
login credentials.

### Where is this exploited?

Many online services nowadays allow you to log in with another service. As an 
example, a website like [Canva](https://www.canva.com) allows you to log in or
'continue' with a range of services such as Google, Facebook, Apple, Microsoft
and Clever; as well as the typical email login.

![canva-login-screen](/assets/img/canva-login.png){: .shadow}
_Canva Login Screen_

When any of these are clicked, a small pop-up window appears with the login
page for whatever service you decided to use.

> These authentication pop-up windows are what attackers use for a BITB attack.
{: .prompt-warning}

### How do they do this?

For an attacker to make a convincing phishing page, they need at least one 
of the following, but typically both need to be true. These are:

1. The webpage must look the same.
2. The URL must look the same, or be so similar that someone would miss the
mistake.

> URL Example: twiter.com vs twitter.com or facebook.com vs focebook.com
{: .prompt-info}

#### Convincing Webpage

It's quite simple for an attacker (or anyone) to replicate a webpage.
Basically, anyone can view the source code of a webpage by rightclicking on
their mouse and clicking 'View page source'. Since the source code contains
everything that makes the website look the way it does, someone simply needs 
to copy and paste this to a new website, make a few small adjustments, and 
then they have an identical looking webpage.

#### Convincing URL?

The next step to this is to somehow get the URL to look the same as the
original. Previously, attackers have tried to get this url to look very
similar to the original, so that even if someone checks the url, they might
miss the difference. 

> Many social media companies, such as facebook or instagram would typically
own / have purchased (or even banned the purchase) of many similar domains in
order to decrease these sort of attacks.
{: .prompt-info}

Regardless, the actual URL can never be the exact same as the original website, so 
someone with a more keen eye would be able to spot the difference.

With this attack, however, while the actual URL is not the same as the 
original, with some javascript code, an attacker is able to make the URL 
**look** like it's the same as the original website.

![bitb-fake-vs-real](/assets/img/bitb-phishing-vs-real.png){: .shadow}
_Fake vs Real Facebook Authentication pop-up (sourced from mrd0x.com)_

### How do you spot the difference?

BITB attack browsers are not genuine browsers (like actual authentication
pop-up windows are), they are simple html code that someone has built to try
and look like a browser pop-up. With this, they have certain limitations that a **genuine**
browser doesn't have. 

> The usual tactic of hovering over the link to see the url at the bottom corner will not work as a verification method.
{: .prompt-warning}

One of these limitations is that the fake browser can't be moved around outside 
of the browser window, or over the address bar. With that, here are some things 
you can do to test whether or not it's a genuine authentication pop-up.

1. Can you move it off the webpage?
  - i.e. Onto a seperate screen, over the URL bar at the top of your browser.
2. (If you're tech savvy) Check the source code.
  - Are scripts being rendered from the authentication webpage (i.e. Facebook
  or Google)? Or from the website that you're visiting (i.e. Canva)?

> If the images are being rendered from the external website that you are
authenticating your account from (such as logging into Facebook and the images
are rendered from facebook.com), this is **GOOD**. If they are rendered from
the website you're visiting (such as canva), this is **BAD**.
{: .prompt-tip}

<br>
*Originally discovered by [mrd0x](https://mrd0x.com/) - bitb templates created [here](https://github.com/mrd0x/BITB) - information referenced from [this article](https://mrd0x.com/browser-in-the-browser-phishing-attack/)*
{:style="text-align:center; filter:brightness(80%);"}
