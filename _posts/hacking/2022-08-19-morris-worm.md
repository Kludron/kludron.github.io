---
layout: post
published: true
author: Kludron
categories: [Hacking]
title: "Malware Throughout History: The Morris Worm"
summary: "Diving into the worlds first major attack on the internet - how it worked, and the repurcussions of it."
tags: [Computer Worm, Computer Virus, Malware Throughout History]
icon:
  path: /assets/img/computer-error.png 
  width: 800
  height: 500
  alt: "Computer Screen with Error"
---

## What is a computer worm?

A computer worm is a type of self-contained malware that replicates itself
and spreads laterally (across computers in the same network) throughout a 
network without the need to call back to a command and control centre
(a server that gives it instructions on what to do).

![computer-virus](/assets/img/computer-error.png){: .shadow width="1548" height="864" style="max-width: 90%" }

What this means, is that it's not controlled by any particular server and that
once released, it cannot be stopped since it automatically duplicates itself
and attempts to infect all other computers on the network.

There are, however, like anything, cases where this isn't the case and a
callback server is required for the worm to do it's damage. An example of this
is a virus called WannaCry which, while still able to spread across computers,
lays dormant as long as the domain *iuqerfsodp9ifjaposdfjhgosurijfaewrwergwea.
com* is registered.

> The domain [iuqerfsodp9ifjaposdfjhgosurijfaewrwergwea.com](http://iuqerfsodp9ifjaposdfjhgosurijfaewrwergwea.com) is currently '**Sinkholed**' (to hand out
illegitimate routes to certain domains - can be used to capture unwanted
traffic, to disable a botnet, for example) by [Kryptos Logic](
https://www.kryptoslogic.com/).
{: .prompt-info}

## What is the Morris Worm?

The morris worm, being considered as the first major attack on the Internet,
was furst unleashed on the evening on November 2, 1988 from a computer at MIT
(Massachusets Institute of Technology).

Designed to exploit multiple backdoors on specific Unix devices and to stay
hidden, it hit 10% (6 000) of the internet within the first 24 hours. It
worked similar to a DOS (Denial-of-service), in that it was designed to hog
resources from the computer until it shuts down.

The specific exploits it would run were vulnerabilities in *Unix Sendmail*, 
*finger* and *rsh/exec*, as well as brute-forcing login credentials on
the targets computer; based on their username.

### How did it work?

How the morris worm would work is:

First, check if the morris worm is already running on the target computer.

> The worm was capable of infecting a computer up to 7 times. **Why seven?** 
This was to stop someone from spawning a *fake* morris worm instance in an
attempt to stop the worm from infecting the computer.
{: .prompt-info}

Second, attempt to spread to another computer on the network, through exploiting
a known vulnerability, or guessing weak passwords.

![network](/assets/img/network.png){: .shadow width="1548" height="864" style="max-width: 90%" }
_Connected Network_

Once the targets computer was infected by the worm too many (7) times, it
would run out of computing resources required to work properly, and begin to
malfunction.

### Who created it?

[Robert Tappan Morris](https://en.wikipedia.org/wiki/Robert_Tappan_Morris) had designed the worm as a learning project,
that soon spun out of control.

While there are questions are the original motives of the worms creation,
he knew the importance of convering his tracks - which was evicednt in
how he hacked into an MIT Computer to launch the attack.

This worm led to the first conviction under the lewly introducted 1986
Computer Fraud and Abuse Act and left Morris witha fine and 400 hours of
Community Service.

#### Additional Resources / Further Reading

- [FBI News Release](https://www.fbi.gov/history/famous-cases/morris-worm)
- [Deeper look into Morris Worm](https://www.hypr.com/morris-worm/)
- [Analysis of the Morris Worm](https://0x00sec.org/t/examining-the-morris-worm-source-code-malware-series-0x02/685)
- [Decomposed Source Code](https://github.com/arialdomartini/morris-worm)
