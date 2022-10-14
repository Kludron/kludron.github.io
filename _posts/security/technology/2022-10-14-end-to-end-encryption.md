---
layout: post
published: true
pin: false
author: Kludron
categories: [Security, Technology]
date: "2022-10-14 12:15:00 +1100"
title: "What is End-to-End Encryption?"
summary: "Taking a look into what End-to-End Encryption is, how it works, and why all End-to-End Encrypting apps are not the same."
tags: [What are they, How it works, Privacy, End-to-End Encryption, Encryption, Whatsapp, Signal, iMessage, Threema, WeChat, Personal Security]
---

End-to-End Encryption (E2EE) is a security implementation used to ensure that only the sender and receiver can view a message.

> The equivalent would be sending a letter to your friend through the mail in a locked box that only you and your friend have a key for. The letter still needs to go through the post office to get to your friend, but the post office won't be able to read the message.
{: .prompt-tip}

## Where is this used?

End-to-End Encryption is used in many online messaging platforms. The most notable of these platforms are **Signal**, **Whatsapp**, **Threema**, **iMessage**, and **WeChat**. It has become much more prominent recently with the rise of privacy demands among users, but the concept has been around for ages (HTTPS could be seen as a form of E2EE).

![Person Messaging on Phone](/assets/img/messaging-on-phone.jpg){: .shadow width="500"}
_Person Messaging on Phone_

### How is this implemented?

Typically, each **device** has its own decryption key. When sending a message, the text is first encrypted with a secret key that only the sender (you) and receiver know. Since each service uses some type of server to send the message (like a post office), the encrypted message is then sent to the server and forwarded to the receiver. When the message arrives at it's destination, the device (end-point) decrypts the message with the key they have on their phone which produces human-readable (plaintext) content.

End-to-End Encryption means that even if that server is hacked and everything is leaked, the messages won't be able to be read because only you and your friend can decrypt them.

> **Encryption** is used in a number of different services. Most devices are encrypted and require your password to decrypt them for use. Encryption is similar to [hashing](/posts/hashed-passwords/), except it can be reversed if you know the secret that was used to encrypt it. There are a whole range of different forms of encryption which *I'll write a blog post about soon*.
{: .prompt-info}

## Are all E2EE messaging apps equal?

The short answer is no. There are a couple of things to consider when looking at End-to-End Encrypted messaging apps. Some obvious questions, surrounding the trustworthiness of the End-to-End Encryption practices in certain apps (is it truly End-to-End Encrypted?) are legitimate, but let's assume that they are End-to-End Encrypted.

> **Note**: The following is more of a comment on what other privacy practices are put in place with these End-to-End Encrypted messaging applications.
{: .prompt-warning}

A "recently discovered FBI training document" released in [this article](https://therecord.media/fbi-document-shows-what-data-can-be-obtained-from-encrypted-messaging-apps/) from November 2021 contains a brief list of the information able to be obtained from different End-to-End Encrypted messaging platforms.

![FBI Lawful Access for E2EE Apps](/assets/img/FBI-E2EE-document.png){: .shadow}
_FBI Lawful Access to data on E2EE Apps_

To summarise what the FBI can "legally" access (based on this image), Whatsapp, iMessage, and Line had message content that can be retrieved, even with End-to-End Encrypted communications. But how?

For these three mentioned, the way they obtained message content wasn't to do with how E2EE was implemented or anything, but that the devices backed up the message content and encryption keys (for iMessage) to the cloud, which meant that they simply needed access to the cloud rather than cracking the encryption.

> This raises a good point about security **defence** vs **offence**. Defenders have to block every point of entry for an attacker, whereas an attacker only needs one point of entry. For End-to-End Encryption, while the encryption methods and message exchange might be secure, if the phone (end-point) is insecure, then the easiest point of attack would be to spy on the phone after it has decrypted the messages.
{: .prompt-info}

> With this, however, it's important to note that even in this worst case, the attacker only has access to one device's messages, not every message sent on the platform.
{: .prompt-tip}

## Takeaways

**Use an End-to-End Encryption messaging app**. Privacy and Security are important, and E2EE messaging apps are vital to ensuring that we have privacy when communicating to others.

In terms of which app to use - I'd personally recommend [Signal](https://signal.org/en/). It's got the best track record (that I know of), is highly praised among the security community, it's free, and it's popular - so you'll likely find that many people that you know are already using it.

***Here's a video that might help explain End-to-End Encryption more***:

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/jkV1KEJGKRA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>{: .shadow}
