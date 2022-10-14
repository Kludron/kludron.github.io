---
layout: post
published: false
pin: false
author: Kludron
categories: [Security, Technology]
date: "2022-10-14 12:15:00 +1100"
title: "What is End-to-End Encryption?"
summary: "Taking a look into what End-to-End Encryption is, how it works, and why all End-to-End Encrypting apps are not the same."
tags: [What are they, How it works, Privacy, End-to-End Encryption, Encryption, Whatsapp, Signal, iMessage, Threema, WeChat]
---

End-to-End Encryption (E2EE) is a method used to ensure that only the sender and receiver can view a message.

> The equivalent would be sending a letter to your friend through the mail in a language that only you and your friend can understand. The letter still needs to go through the post office, but they won't be able to read the message.
{: .prompt-tip}

## Where is this used?

End-to-End Encryption is used in many online messaging platforms nowadays. The most notable of these platforms are **Signal**, **Whatsapp**, **Threema**, **iMessage**, and **WeChat**.

![Person Messaging on Phone](/assets/img/messaging-on-phone.jpg){: .shado width="500"}
_Person Messaging on Phone_

### How is this implemented?

This is commonly implemented by each **device** having its own decryption key. When sending a message, the text is first encrypted with a key that only the sender (you) and the receiver know about. Since each service uses some type of server to send the message (like a post office), the encrypted message is then sent to the server and forwarded to the receiver. End-to-End Encryption means that even if that server is ever hacked and everything is leaked, the messages won't be able to be read because only you and your friend can decrypt (and therefore read) them.

> **Encryption** is equivalent to adding a secret lock to your message or letter. Only you and the other person you're sending it to (in the case of E2EE with messages) have a key to open the lock.
{: .prompt-info}

## Are all E2EE platforms equal?

The short answer is no. There are a couple of things to consider when looking at End-to-End Encrypted platforms. Some obvious questions, surrounding the trustworthiness of the End-to-End Encryption practices in certain apps (is it truly End-to-End Encrypted?) are legitimate, but let's assume that they are End-to-End Encrypted.

A "recently discovered FBI training document" released in an article from November 2021 contains a brief list of the information able to be obtained from different End-to-End Encrypted messaging platforms.

![FBI Lawful Access for E2EE Apps](/assets/img/FBI-E2EE-document.png){: .shadow}
_FBI Lawful Access to data on E2EE Apps_

To summarise what the FBI can "legally" access (based on this image), Whatsapp, iMessage, and Line had message content that can be retrieved, even with End-to-End Encrypted communications. But how?

For these three mentioned, the way they obtained message content wasn't to do with how E2EE was implemented or anything, but that the devices backed up the message content and encryption keys (for iMessage) to the cloud, which meant that they simply needed access to the cloud rather than cracking the encryption.

> This raises a good point about security **defence** vs **offence**. Defenders have to block every point of entry for an attacker, whereas an attacker only needs one point of entry. For End-to-End Encryption, while the encryption methods and message exchange might be secure, if the phone is insecure, then an attacker can simply bypass E2EE since they can just view the decrypted messages at the end anyway.
{: .prompt-info}

> With this, however, it's important to note that even in that case, the attacker only has access to that one device's messages, not every user's messages.
{: .prompt-tip}

## Takeaways

Use an End-to-End Encryption messaging app. Privacy and Security are important, and E2EE messaging apps are vital to ensuring that we have privacy when communicating with our loved ones.

In terms of which app to use - I'd go with Signal. It's got the best track record so far, is highly praised among the security community, it's free, and is very popular - so you'll likely find that many people that you know are already using it.

Here's a video that helps to explain End-to-End Encryption more:

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/jkV1KEJGKRA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>{: .shadow .center}
