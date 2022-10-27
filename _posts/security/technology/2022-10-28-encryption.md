---
layout: post
published: true
categories: [Security, Technology]
author: Kludron
pin: false
date: "2022-10-28 08:15:00 +1100"
tags: [How it works, What are they, Encryption, Asymmetric Encryption, Symmetric Encryption]
title: What is Encryption and how does it work?
math: true
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

![Key](/assets/img/key.jpg){: .shadow width="400"}
_Digital Key_

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
: The RSA Algorithm is a common public-key encryption algorithm that was created in 1977 and is still used today. With complex maths involved, it utilises the mathematics property where summing two numbers together is easy to do, but finding the two original numbers used to sum is much harder. For example, if the sum is 18, three possible values (or key pairs) would be $6 \times 3$, $9 \times 2$, or $18 \times 1$.

![Post Box](/assets/img/post-box.jpg){: .shadow width="400"}
_Post Box in Bush_

> Imagine a post box. Anyone can put a letter in, (public) but only the person with a certain *private* key can unlock the box and view the letter. The hole in the box is synonymous to a public key that everyone has access to. With this small slit, however, it's *impossible* for anyone to get another message out of the box and read it, only the holder of the key to unlock the box can do that.
{: .prompt-tip}

## TLDR

Encryption algorithms are cryptographic algorithms that output a type of text known as *ciphertext*. This text needs to be unable to be read (like [hashing algorithms](/posts/hashed-passwords)), but also needs to be **reversed**. There are two types of ways to encrypt data, these are *symmetric* algorithms which have one key to encrypt and decrypt the data, and *asymmetric* algorithms which have two keys; one to encrypt and one to decrypt.