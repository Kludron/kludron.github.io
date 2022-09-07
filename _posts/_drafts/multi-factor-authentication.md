---
layout: post
published: false
author: Kludron
categories: [Technology, Security]
title: "How it works: Multi-Factor Authentication"
summary: ""
tags: [How it works, Multi-Factor Authentication]
---
## How does Multi-Factor Authentication work?
# What is Multi-Factor Authentication?

Authentication comes in many forms, to name a few of some that are currently in use are passwords, pin codes, bio-metrics (fingerprint / face scanning), email verification, one-time pins (sent via text or in an app) or even personalised verification apps for different services, like how Google requires you to verify a login to a new device through a Google app on an already verified device. Multi-factor authentication (MFA) is just a combination of two or more of these types of authentication methods.

One of the more common types of verification methods used are one-time pins; whether that be sent through email, SMS or an authenticator app. This blog aims at helping explain how this one-time pin is generated, why it’s secure and why you should implement MFA on every service you can.

# What is TOTP?

You’ve probably seen TOTP in action before and not realised it. TOTP stands for Time-based One-Time Password and is a form of authentication commonly seen as a set of 5-6 numbers. When you log into a Government service or other Online Service, you’ve probably been sent a code that you need to input in order login with an expiry time – that’s a TOTP code. Typically, TOTP codes are seen in authenticator apps and change every 30 seconds or so, but most logins accept up to two or three previous codes to allow for time delays between the service and the user.

## How are OTP’s generated?

## How are OTP’s verified?
