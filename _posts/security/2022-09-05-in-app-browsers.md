---
layout: post
published: true
author: Kludron
categories: [Security]
title: "Insecure In-App Browsing"
summary: "Looking into what in-app browsers are, the security and privacy concerns around them, and how to protect yourself."
tags: [Browsers, iOS, TikTok, Privacy, How it works, What are they]
pin: true
date: "2022-09-05 09:15:00 +1000"
icon:
  path: /assets/img/messenger-in-app-browser.png
  alt: "Facebook Messenger's In-App Browser" 
---

## What are in-app browsers?

Mobile applications such as Facebook, Instagram, Snapchat, Facebook Messenger, Discord and (more recently in the news)
**TikTok** have their own in-app browsers that allow users to open links in a browser from within the application.

In-app browser, put simply, are inbuilt browsers that are used to open links while inside a mobile app. For example,
if you've ever clicked on a link inside Facebook Messenger, you'll notice that there's a small pop-up that comes up with
the website - this is their inbuilt browser.

![Facebook Messenger In-App Browser](/assets/img/messenger-in-app-browser.png){: .shadow}
_Facebook Messenger's In-App Browser_

### Why are these insecure?
 
[Internet 2.0](https://internet2-0.com/whitepaper/tiktok-inapp-browsers/) recently released an analysis into the TikTok in-app
browser, noting how when websites are loaded inside this in-app browser, pages are injected with malicious javascript before
displaying it to the user that is used to track the users activity across their browsing session.

What this meant was that whenever a user clicked on a link from within the app, and the in-app browser was opened, anything that 
the user did to interact with the webpage, whether that be purchase a ticket (inputting credit card details), visiting a 
shopping site, reading a blog post etc. was all recorded and sent back to TikTok.

> Not all in-app browsers inject malicious javascript into the pages, but it's **safer** to assume that what we do 
inside an *in-app browser* is being tracked.
{: .prompt-info}

## How do I protect myself?

The simplest way to protect against these possible privacy issues is to open the link in your browser, rather than within the 
app itself. This can be done by either copy and pasting the link into your browser, or (once opened within the in-app browser) 
there is *typically* an option to open the link in your default browser.

![Opening link in browser](/assets/img/messenger-open-in-safari.png){: .shadow}
_Opening the link in your default browser_

While not all in-app browsers are there with malicious intent, it's always better to take these small security
measures to ensure that your data, credit card details and activity aren't being tracked or recorded.

## How can I detect if my activity is being recorded?

Twitter user [@KrauseFx](https://twitter.com/KrauseFx/status/1560372215048175617) linked an online tool used in the
investigation of the TikTok in-app browser called [InAppBrowser.com](https://inappbrowser.com/) that allows anyone
to check what data is being recorded by the in-app browser, by analysing the javascript injected into the website.

![iOS in-app browsers analysis](/assets/img/inappbrowser-analysis.png){: .shadow}
_InAppBrowser.com analysis of common in-app browsers_

> Keep in mind, this tool only detects some of the common /known ways that in-app browsers track user data. Even if
the tool doesn't detect any tracking javascript, it doesn't mean that you're not being tracked.
{: .prompt-warning}

*For more information, view the original blog announcement of this tool by KrauseFx [here](https://krausefx.com/blog/announcing-inappbrowsercom-see-what-javascript-commands-get-executed-in-an-in-app-browser).*
{:style="text-align:center; filter:brightness(80%);"}
