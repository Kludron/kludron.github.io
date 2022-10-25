---
layout: post
published: true
categories: [Security, Technology]
author: Kludron
pin: false
date: "2022-10-21 19:15:00 +1100"
tags: [How it works, What are they, Encryption, Asymmetric Encryption, Symmetric Encryption]
title: What is Encryption and how does it work?
summary: "Encryption is all around of us, but what are the different types of encryption, how do they work, and where are they used?"
icon:
  path: 
  alt: 
---

Encryption, in short, is a method of scrambling data in a way that can't be read (ciphertext). One characteristic of this *ciphertext*, however, is that they need to be able to be reversed (unlike [hashing algorithms](/posts/hashed-passwords)).

## What are the different types of Encryption Algorithms?

There are many different types of encryption algorithms that are used across the world, from how we access websites, to how [E2EE apps](/posts/end-to-end-encryption) are implemented. These algorithms, however, typically fall into one of two categories: **symmetric** or **asymmetric**.

> These categories are determined by the way the encryption / decryption keys are implemented.
{: .prompt-info}

### Symmetric Encryption Algorithms

**Symmetric Encryption** algorithms are essentially where the same key that was used to encrypt the data is also used to decrypt the data. These sort of algorithms are used when encrypting hard drives, laptops, [password managers](/posts/password-managers) etc.

> **AES**, **DES** and **Triple DES** are some common *symmetric encryption* algorithms. **AES** (Advanced Encryption Standard) was released in 1998 and supersedes **DES** (Data Encryption Standard) (first published in 1977) as the standard for *symmetric encryption*.
{: .prompt-info}

Of these symmetric encryption algorithms, there are two types of traditional ciphers known as substitution ciphers and transposition ciphers. 

**Substitution Ciphers**
: These are ciphers that have a one-to-one mapping of characters to an encoded character. A common example of this is a *caesar cipher* or *ROT13*, where each letter is mapped to another letter in the alphabet. For *ROT13*, all letters are mapped to the letter 13 characters away (*a -> n*, *l -> y*, *p -> c*). The *caesar cipher* follows the same concept, but instead of the "rotation" being 13, it's an arbitrary value *n* which is the *key*.

**Transposition Ciphers**
: These are ciphers where the text is reordered without changing the characters themselves. Common examples of these include the "Rail Fence Cipher", "Skytale" (similar to the Rail Fence Cipher), and "Route Cipher".

### Asymmetric Encryption Algorithms

**Asymmetric Encryption** algorithms use different keys to encrypt or decrypt something. The approach behind these is that one key is a *public* key (publicly known), and one is a *private* key (kept as a secret to just you). This type of encryption is used to encrypt messages to others, but also as a verification method for message receivers.

> **RSA** (Rivest, Shamir, and Adleman - names after the three creators) is a commonly used asymmetric encryption algorithm found in many online tools such as HTTPS, [E2EE Apps](/posts/end-to-end-encryption), SSH, and GitHub.
{: .prompt-tip}

**RSA Encryption Algorithm**
: The RSA Algorithm is a common public-key encryption algorithm that was created in 1977 and is still used today.