---
layout: post
published: true
author: Kludron
categories: [Security, Hacking]
title: "A brief look into Ransomware"
summary: "What is ransomware? And what should I do if I see ransomware? In this blog we take a brief look into some of the information you should know about this type of computer virus, and how to mitigate the damage caused by a ransomware attack."
tags: [Phishing, Computer Virus, Ransomware]
---

## What is Ransomware?

Most of you would have heard of the word *ransom* before, or to '*demand a ransom*' – typically to pay
for the release of a captive or something similar. Ransomware is the cyber version of that. 

![Ransom Note](/assets/img/ransom-note.jpg){: .shadow}
_A Ransom Note_

Historically it has been where a hacker unleased a type of malware (computer virus) onto a victim's computer
that encrypts all of their files and data. The hacker then demands some sort of payment for them to decrypt
the computer and allow the victim to access their files again.

> **Encrypting** is a method of scrambling some form of text or data in a certain way so that it cannot be 
understood by a reader. **Decrypting** is unscrambling that text or data so that it can be understood. The 
different methods of scrambling data are known as encryption algorithms.
{: .prompt-info}

## What do I do if I've been 'Ransomwared'?

The advice given to people when they're in this type of situation is to never pay the ransom. 

**Why?**
- The attacker might not give you a decryption key.
- Even if the key works, it's likely that you won't get a full file recovery.
- By paying the ransom, it's funding the ransomware business. If ransomware attacks don't lead
to payments, then they won't become a viable method of obtaining money which would (hopefully) lead
to them not being used anymore.

The reason for this is, typically, because first, there's a possibility that they won't give you back access
to your files, and secondly, by not paying the ransom, the idea is that this type of attack won't be seen
as a viable way for hackers to make money and, hence, won't use it anymore - eliminating ransomware.

Fortunately, there are several resources online that have publicly available *decryption keys* for different
types of ransomware.

> **Decryption Keys** are passwords or some type of secret that the decryption
algorithm needs to correctly unscramble to text/data.
{: .prompt-tip}

One example of this is a tool known as [**Crypto Sheriff**](/resources#Crypto-Sheriff) which allows the user
to type in the information provided to you in the ransom note, and searches their database for known decryption
keys.

![Encryption Key](/assets/img/key.jpg){: .shadow}
_Encryption Key_

The other solution would be to restore from a previous backup. While this could lead to some type of data
loss, depending on how long ago your last backup was; which leads into...

## How do I prevent / prepare for a Ransomware attack?

**Backups**
: These are by far the greatest '*counter*' to a ransomware attack, since the *threat* of not being able to access
important files are made redundant.

> It's always good practice to keep multiple backups, including an *offline* backup, which is one that's not
connected to your company network so that the backups too won't be encrypted.
{: .prompt-info}

**Update / Patch Devices**
: Patching known vulnerabilities is always going to be one of the easiest and best security measures you can take
for your devices. Leaving devices and software out of date is like leaving your house, knowing that the front door
is broken and anyone can just walk in.

**Antivirus**
: A lot of basic ransomware or other forms of computer viruses can be stopped with antivirus software. I'll be writing
a blog post looking into different antivirus software soon, but my recommendations would be to look into 
[Bitdefender](https://www.bitdefender.com/) and to **STAY AWAY** from Kaspersky (Russian AntiVirus Software).

**Social Engineering Education**
: One of the most common avenues for ransomware to get into a company or home network is by a user clicking on a malicious
link - typically coming from an email. Phishing is a type of *Social Engineering* attack in which the attacker pretends
to offer something, or be someone else to try and get the target to do something to allow the attacker in, such as download
a file. *I'll be posting a blog about phishing soon.*

> Phishing attacks are typically a general *spray* attack in which an attacker sends an email out to multiple victims
and tries to get a response back. Spearphishing is a more targeted form of this.
{: .prompt-tip}

**Zero trust model**
: Employee training and knowledge will always be vital in protecting your organisation, but no one is perfect, and even
the most trained person who's constantly on the lookout can be tricked. This is why it's important to adopt something
like the *Zero Trust Model*. What this is (in short) is basically where each user only had access to what they **need**
to access. This can help restrict a ransomware attack to only the files that a specific user has access to which, 
under this model, shouldn't necessarily be all of the company files.

**Encrypting your files**
: To be clear, I don't mean encrypting all of your files if you don't need to, but for those with important information, it 
could be nice to add a little extra protection. Why this might be important will become more evident below.

## How has Ransomware evolved?

Unfortunately, with the world becoming smarter in how they counter ransomware attacks by simply restoring from a backup,
attackers have had to come up with new ways to keep the money rolling in. 

![Origami Evolution](/assets/img/evolution.jpg)
_Origami Evolution_

One of these ways was an added element of **leaking company data** in a ransomware attack. What this means, is that
typical attacks (on companies at least) would encrypt all of their files as well as threaten to leak those files (potentially
classified) to the public internet, typically if the ransom isn't paid within a time frame. With this, there's also
typically the threat of "*Do not contact the police or we will leak your company information*" which (and fair enough) adds
a lot more pressure on companies to pay the ransom.

### How do we counter this evolved version?

Some of the measures mentioned above such as **Backups**, **Zero Trust Model**, and **Encrypting your files** can all
be viable solutions to limit the damage caused by a ransomware attack. With the time frames though, it's **Vital** that
a plan is in place to deal with this type of situation. While some companies have money set aside for ransom payments,
having a cyber security company / branch on your incident response plan is vital, not just to protect your data,
but also for possible legal repercussions afterward.

## TLDR

To summarize, ransomware is a type of computer virus that encrypts your files and demands that you send money
to the attacker to gain access to your files and (typically) stop them from leaking your data to the public
internet. The advice given on what to do if you are the victim of a ransomware attack is to not pay the ransom.
There are several steps you can take to *mitigate* the damage caused by a ransomware attack, and steps you
can take to prevent a ransomware attack in general, since most are caused by opportunity, rather than
being targeted.