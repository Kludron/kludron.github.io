---
layout: post
published: true
author: Kludron 
pin: false
categories: [Security, Technology]
tags: [VPN, Privacy, How it works]
title: "How it works: Virtual Private Network (VPN)"
snippet: "Virtual Private Networks or VPN's are one of the most commonly used terms when it comes to cyber security, but what is a VPN and how does it work?"
---

A Virtual Private Network (VPN) acts almost as a middle-man between your network connections. The path of 
a web request from a device connected to a VPN goes from the users device, through to the VPN server
via a secure tunnel, and then on towards the website.

![VPN Connection](/assets/img/VPN-connection.png){: .shadow}
_VPN Connection from Client to Server_

Put simply, what a VPN means is that every time you send a request to load a page, or download a file, the request first gets sent to the VPN server and then to the website. 

## How does a VPN protect me?

Since all of your internet traffic is being sent first to a VPN server, and then to the website that you visit, this means that all the website
thinks, is all of the traffic is coming from the VPN server. What this means, therefore, is that the VPN server hides your computer from the 
website, giving you **privacy**.

The **security** aspect of a VPN comes from how your requests are sent to the VPN server. When your computer first connects to the VPN server, 
it establishes a *secure tunnel* for all of the requests to be sent through, which means that all of your traffic is encrypted with a secret key
that only your computer and the VPN server know - which is never reused again.

> Since everything you send / receive is being passed through a VPN server, this will mean that your internet connection will be slower. It depends
on where the VPN server is, as well as the quality of the server on how much slower it could be.
{: .prompt-warning}

## What does a VPN provide?

From a high overview, VPN's provide **privacy** and **security**, but what does that mean and what are some other benefits?

##### Access to region-specific content

With the **privacy** features of a VPN, and since all of your traffic looks like it's coming from the VPN server, if your VPN server is located in
a different country (for example, United States of America), all of your web traffic to websites looks like it's coming from within that country.
What this means is that if there is content that is only accessible for computers inside that country, you'll be able to access it since all of
your traffic looks like it's coming from within that country.

![World Map](/assets/img/world-map.png){: .shadow}
_World Map - region specific content_

##### Secure Browsing

Certain online activities such as online banking need to stay secure. With a VPN, since your traffic is encrypted between the user and the VPN server
in an extra layer of encryption, this means that anyone connected to the same internet connection as you, won't be able to decrypt or view the
information you are sending over the internet. While it's still not great to use public wifi, this means that even public wifi would be secured
enough to use it for online banking.

##### Hiding your IP address

With all of your requests going through a VPN server, the website that you're visiting thinks that the computer sending the requests is the VPN 
server. Therefore, if you were to check your IP address when connected to a VPN server, it would be the IP address of the VPN server, not your
computer, which means that a VPN server hides your IP address when online.

## When should I use a VPN?

Typically, it's safe to not use a VPN on your home networks - since they're generally private anyways, but it depends on what you're wanting
a VPN for.

> It's recommended that VPN's are used **all of the time** when travelling overseas.
{: .prompt-tip}

If you want a VPN just to stay more secure online, then use a VPN whenever you're connected to publicly accessible wifi. This could be at work, at
the airport, at school etc. It's also recommended that you use a VPN when you're on your mobile data.

If you want a VPN for better privacy online, then use a VPN all the time - on your home wifi, on publicly accessible wifi, mobile data and other private networks. 
