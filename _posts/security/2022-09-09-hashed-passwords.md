---
layout: post
published: true
pin: false
author: Kludron
categories: [Security]
title: "What are hashed passwords?"
summary: "Briefly looking into what hashed passwords are, where they're used, what their characteristics are and why we use them."
tags: [Hashed Passwords, Hashing, Passwords]
---

When looking around at cyber security concepts, one term that is used
often is *hashed password* or to *hash* something. What this is, in
a basic overview, is a one-way encrypted version of something.

![Hashing Password](/assets/img/hashing-diagram.png){: .shadow}
_Diagram showing plaintext and hashed text_

> **Plaintext** describes text that is human
readable / understandable, such as (hopefully) this blog post, or the 
word "password".
<br>
**Hashed** describes text that has gone through 
a hashing function and is typically a little less human readable, such as 
*5f4dcc3b5aa765d61d8327deb882cf99*.
{: .prompt-info}

## What is a hashing function?

Hashing functions (or hashing algorithms) are functions that take some
type of data, run it through a series of complex mathematical steps,
and spit out a result that looks like a weird string of letters and 
numbers.

> Some of the most common hash functions include **SHA256**, **SHA512**,
**MD5** and many others.
{: .prompt-tip}

Hash functions, however, are much more complex than just taking in 
data and spitting out a result. There are several *rules* that a 
hash function must live by for it to be used / counted as a hash
function.

These rules / attributes a *hash* function must have are:
- [x] Repeatable
- [x] Unique
- [x] Unpredictable
- [x] Irreversible
- [x] Consistent

### What do these rules/attributes mean?

**Repeatable**
: The repeatable attribute means that every time the same text is *hashed*
with that hash function, it gets the same result. This should be the same
result, independent of the time of day, computer hardware, operating system
etc.

> For example, if I run the *plaintext* "password" through the **MD5** 
*hashing algorithm*, it should **always** produce the result
*5f4dcc3b5aa765d61d8327deb882cf99*.
{: .prompt-tip}

**Unique**
: Hash results must all be unique, meaning that (to the best of their
ability), there should *ideally* only be one input to produce that result.

: Since it's mathematically impossible to only have one input for each
possible output (there are an infinite number of possible inputs and
a finite number of possible outputs), as long as another input that
produces the same output (*collision value*) cannot be predicted/
calculated, this is ok.

> Having multiple inputs that produce the same *hash* output is called
a **hash collision**.
{: .prompt-tip}

**Unpredictable**
: Hash results should not be able to be calculated or predictable, 
meaning that there should be ***no correlation*** between the hash of
*password1* and *password2* for example.

**Irreversible**
: It should not be possible to find the original input of a hash
function based on its output. In essence, this should be a one-way
encryption, and should not be able to be decrypted / reversed.

: _Note: **Rainbow Tables** are not decrypting / reversing the input
since it only shows a **possible** input for the same output_

> A common way for someone to *find the reverse* of a hash output
is through what is known as a **Rainbow Table**. These are databases
or *tables* filled with various inputs, and their corresponding
hash outputs.<br>
To try this for yourself, paste in *5f4dcc3b5aa765d61d8327deb882cf99*
into your search engine, and you should be able to find the result quite quickly.<br>
_(Hint: It's the MD5 hash for "password")_
{: .prompt-tip}

**Consistent**
: This is more about the output of a hash, while it should be repeatable,
**ALL** hash outputs should be the **same length**. This is part of
the **unpredictable** nature of a hash, ensuring that
all hash outputs are just as difficult to crack as each other.

> All hashes have their own *Fixed-length Output*. For example,
the **MD5** hash has a fixed-length output of 128 bits (or 32
**hexadecimal** digits). Also, all hex outputs are in hexadecimal
digits, meaning that they are a combination of (lowercase **OR** UPPERCASE) letters
and numbers.
{: .prompt-info}

## Where are hashed passwords used?

Hashed passwords (ideally) are used whenever a website or server stores
your password for login. What happens, is that when you register
for a website, the website takes a *hash* of the password you
typed in, and then stores that in their database, next to your
username.

**Why?**
: If a website / company gets hacked (for example), the attackers
can only grab the *hashed* passwords, meaning they don't know
what the actual password was (**irreversible** attribute).

Since one of the attributes of a hashed password is that it's
**repeatable**, every time we type in our password to the website
to log in, the password that we typed in is *hashed* the same
way as it was originally, and compared to what is stored on the
websites database. If they match (**uniqueness** attribute saves
us here), then the user entered the correct password, if they don't,
then their password was incorrect.

## How do we secure a hashed password even further?

With **Rainbow Tables** and the like threatening the **irreversible**
nature of hashed password, security engineers have become creative
in their attempts to counter these tables, namely with **salt** and **pepper**.

![Salt and Pepper](/assets/img/salt-and-pepper.png){: .shadow width="250" }
_Salt and Pepper_

**Salt**
: A Salt (not the edible kind) is a random string of characters added to the start/end
of a users password *before* it's hashed. For example, if I registered an account
on a website, and typed in my password as "password", the website would take that
password, add (for example) "supersecretcodethatwasrandomlygenerated" to the start of
it (so the *password* being hashed is "supersecretcodethatwasrandomlygeneratedpassword"),
**and then** they hash that new *password* and store it in the database.

: Then, whenever someone tries to log into that account, they type in their password,
the *Salt* is added to the start of it, and then it's compared to the hash in the 
database.

> **Salt**'s are typically consistent across all users, meaning that typically
a website would use one *randomly generated* salt on all passwords.
{: .prompt-info}

**Pepper**
: Pepper (again, not the edible kind) is similar to a salt, and works the same
way, except it only applies to one user, meaning that each user would have a
different **pepper**.

: Typically, these are stored on a database, near username and hashed password,
and are added to the password **before** it's hashed *as well as* the salt.
