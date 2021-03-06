---
layout: post
title:  "Understanding Encryption with Ruby"
date:   2015-10-11 14:00:22 -0600
categories:
---

# Or twda (2-shift)


In this blog post I'm going to write a bit about encryption. Encryption is a topic I've invested significant time researching outside of my DBC coursework, and I think anyone who wants to keep their information safe could benefit from knowing a little more about how data encryption works.

To borrow a definition from [Wikipedia(Encryption)](https://en.wikipedia.org/wiki/Encryption):

> Encryption is the process of encoding messages or information in such a way that only authorized parties can read it. In an encryption scheme, the intended communication information or message, referred to as plaintext, is encrypted using an encryption algorithm, generating ciphertext that can only be read if decrypted.

For example, in the title of this article I put "twda", which would be an example of "cyphertext" or an encrypted message. In this case, the "plaintext" or original message is the word "ruby".

How do we get "twda" from "ruby"? We used one of the oldest and simplest forms of encryption called a ["caesar cypher"](http://practicalcryptography.com/ciphers/caesar-cipher/)(It was a favorite of the roman emperor Caesar). It involves taking each individual character in a string and shifting it down in the alphabet a certain number of times. So in a shift 2:

``` "a" -> "c" ``` 

``` "b" -> "d" ```

``` "c" -> "e" ```

ect...

For "twda"->"ruby", the encryption process would look like this:

``` "r" -> "s" -> "t" ```

``` "u" -> "v" -> "w" ```

``` "b" -> "c" -> "d" ```

``` "y" -> "z" -> "a" ```

I wrote a [little Ruby snippet](https://github.com/gaw1990/gaw1990.github.io/blob/master/blog/blog-week-8/caesar-cypher-ruby.rb) for caesar cyphers that lets you encrypt and descrypt messages for those interested.

While a caesar cypher might be effective for one word, or passing notes in class, but it's no where near secure. If you had the time (or the code) you could print out each of the 25 shift possiblities and see which one is plain english.

There are also other methods to decrypt substitution codes (codes in which every letter "y" is subtituted with letter or number "x"). One interesting method uses the frequencies of letter occurance in the english language("e" represents on average 13% of characters, where "z" represents less than 1%) to figure out which characters represent which. [(more info on substitution cryptanalysis)](http://practicalcryptography.com/cryptanalysis/stochastic-searching/cryptanalysis-caesar-cipher/)

Also consider the modern security climate:

If I were an american spy in Great Britain who wanted to send a message back to Barak Obama, I would have to send the ecrypted message "twda" and the shift "shift-2" so that he would know how to decode the message when he got it.

 Ideally:

``` Secret message + key--->-------The internet--->-------->Barak Obama ```

More likely:

``` Secret message + key--->-----(local eavsdropper)--->----(isp collection)------> Barak Obama ```

The local eavsdropper could be a neighbor who figured out my wifi password, or someone who tampered with public wifi. As we found out from various government leaks, most major governments have the ability to access all out-of-country internet traffic and even citizen-to-citizen traffic if there's suspicion. (In Great Britain it's even stricter, the government has full access to all internet traffic)

No matter how good your spy encryption is, you have to tell Obama which code you're using so he can decrypt the code himself. The problem: Whatever code + key you send to obama, the eavsdropper will have as well.

There are ways around this problem, like distributing keys in advance then changing them daily. This eliminates the need to transmit a key with a message and improves security.

But what if you just decided to buy a new jacket online and you didn't set up a key schedule with GAP? That's where something called "Strong Public Key Encryption" comes in.

-----------------------------------------------------

If you were to open up your "Keychain Access" app in OS X and look through your certificates, you'd see lots of RSA-1024s or RSA-2048s. These are RSA encryption methods, which are the modern standard of encryption.

The public key(which anyone can see) is based on a private key(which only the person who initiated the communication knows). This allows for an individual with a private key and the encrypted message to quickly decrypt a message, but for an individual with only the public key and encrypted message, decryption with even with the most powerful computers on earth would take an incredibly long time.

RSA achieves security by relying on the difficulty of factoring extremely large prime numbers and allows for private communication with a minimum of prearrangement. RSA also allows for the interception of both the public key and the encrypted message without reasonable possiblity of decryption.

Here's an example of a RSA-2048 Number:

``` 2519590847565789349402718324004839857142928212620403202777713783604366202070 7595556264018525880784406918290641249515082189298559149176184502808489120072 8449926873928072877767359714183472702618963750149718246911650776133798590957 0009733045974880842840179742910064245869181719511874612151517265463228221686 9987549182422433637259085141865462043576798423387184774447920739934236584823 8242811981638150106748104516603773060562016196762561338441436038339044149526 3443219011465754445417842402092461651572335077870774981712577246796292638635 6373289912154831438167899885040445364023527381951378636564391212010397122822 120720357 ```

In order to break an encryption made with this number, you'd have to factor it. (There's currently a 200k prize for the first person to decrypt an RSA-2048 number and many beleive it wont happen for years). So you can rest assured (discounting consipracy theories that the NSA can crack RSA-2048 or that there's a built in backdoor) that your data is safe.