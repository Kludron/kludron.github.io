---
layout: post
published: false
author: Kludron
categories: [Security]
title: "What are hashed passwords"
snippet: ""
tags: [Hashed Passwords, Hashing, Passwords]
---

***NOTE: THIS CONTAINS INCORRECT INFORMATION. REWRITE***

# What are Hashed Passwords?
(Hopefully) whenever a password is stored on a server (online login credentials), it is typically saved as a hashed password rather than a plain-text password.

First, plain-text passwords are simply passwords that are human readable. This blog that you’re reading is plain-text. When something is ‘hashed’, it means that it’s the output of some value that went through a hash funtion. To put it simply, hashed passwords are plain-text passwords that have been run through hashing algorithm.

There are many common hashing algorithms, such as SHA256, SHA512, MD5, SHA1 among many others. When data (plain-text passwords, documents etc.) is run through a hashing algorithm, the output looks really funny and is seemingly random. This output, however, must fall under some strict guidelines for it to be considered as a hashing algorithm. These include:

- **Repeatable**
  - What I mean by this is that, for example, every time the password “Password123” is run through the MD5 hashing algorithm, the output is the exact same – no matter the time, device, date, operating system or anything.
  - For those curious, the MD5 hash of “Password123” is “42f749ade7f9e195bf475f37a44cafcb”. If you use a hash generator (such as [https://md5hashing.net/hash/md5/]) and type in “Password123” with the MD5 algorithm, you will receive the exact same output.

- **Independence**
  - Ideally, only the password “Password123” should have the output “42f749ade7f9e195bf475f37a44cafcb” and nothing else should be able to produce the same hash result. Due to the limited length of hash outputs though, it is inevitable that there is more than one input that will produce the same output, but as long as these are not able to be calculated, then this isn’t a worry.

- **Unpredictable**
  - What this means is that the hash “Password123” and “password123” should be completely different and not be correlated. If one hash is predictable based on an earlier hash, then this would mean that the hash algorithm is ‘broken’, since we can deliberately produce whatever hash output we want.

- **Consistent**
  - What this means is that no matter how big the input is, whether is be 1 character or 100 characters, the output will always be the same size (depending on the hashing algorithm used). This is an important factor in the unpredictability of the hash.

- **Irreversible**
  - What this means is that the original value cannot be calculated from the hashed output. This is critical for security reasons and the primary reason why hashed passwords are used.

Each of these factors are crucial to the security of hash outputs. If the output was inconsistent, then each time a password is checked, even the correct input wouldn’t work. If multiple inputs produced the same input, then multiple passwords would show as correct, even if they aren’t. If the hashes are predictable, then hashed passwords would be easily cracked, meaning that someone could calculate your password based on the hash value. If the hashes weren’t a constant size (i.e. independent on the size of the input), then large inputs would produce large outputs and hence the hash would be somewhat predictable (this is similar to simply encoding the input).

## Why do we hash passwords?

The reason we hash passwords is because if, for example, a hacker gains access to the database that contains all of the usernames and passwords, they can only see the username and hashed password. With the hashed password, they can’t do anything since it’s irreversible. But what can they do?

Taking advantage of the fact that hash outputs are repeatable, meaning that the MD5 hash of “password” will always be “5f4dcc3b5aa765d61d8327deb882cf99”, hackers have created what is known as a “Rainbow Table”. A “Rainbow Table” is essentially just a list of common passwords (or any input they like), and the hash value that they output. This way, rather than testing every possible input to find what your password is, they can look up the hash on the Rainbow table, and if there’s a match, then they’ll know what your password is.

Rainbow tables are very common, in fact if you went to your search browser and pasted in “5f4dcc3b5aa765d61d8327deb882cf99”, I guarantee that you’ll find what input is needed for this MD5 hash output (hint: it’s “password”).

## How do we secure a hashed password?

Taking advantage of the fact that each hash output is ‘Unpredictable’, security engineers have become quite clever in their tricks to obscure hashed passwords. If, for example, every time a password is entered in, the backend server adds the string “a8h2/” to it, the even if the users password is “password”, the database stores it as the hash output of “passworda8h2/”, which is much less likely to turn up in a rainbow table than “password”. On the users point of view, the password they put in is still “password”, but the back-end hashe it as what they put in + “a8h2/” which makes it more secure. This is called a **Salt**.

The downside with adding a **Salt** is that they can be uncovered easily. If, for example, the salt was “123!” and someone knew the hash of “password123!”, then they could quickly test that every common password with + “123!” on the end. One way around this is to add what is known as a **Pepper**. A pepper is a dynamic variable that is unique to each user. For example, the pepper could be their username, or user id. This way, with a simple password such as “password”, the hashed variable could be “user13password123!” which is even less likely to turn up on a rainbow table database.

To conclude, a **Salt** is a constant variable that is added to a password whenever it is sent through to the server, and a **Pepper** is a dynamic variable that is added to a password whenever it is sent through to the server as a way to make the hash output different and much harder to crack.

One takeaway we can get from this is to use strong, random passwords. Rainbow tables are filled with every dictionary word and combination of numbers and special characters, so using something like a a password manager that can give you pseudo-random passwords every time would decrease the chance of your hashed password getting cracked ten-fold.
