# Fun with Hashes and Arrays

---
layout: post
title:  "Fun with hashes and arrays"
date:   2015-09-014 14:00:22 -0600
categories: 
---

#### September 14, 2015

An Array: A collection of objects indexed as [key] and [value] pairs where the keys are integers starting at [0] and increasing incrementally by 1 and the values are assignable.

![](array-index.png)

Values can be accessed easily by their keys: (Eg. hash1(0) will return "hello", hash1(1) #=> "world")

Arrays are the simplest and most efficient data structure in ruby. They can be used to store strings, integers, floats and booleans:

![](arrays.png)

Adding, subtracting or moving data in arrays is fast and efficient becayse the keys in the [key]=[value] pairs are fixed. Having a strict key set allows for easier data manipulation and navigation. Arrays a popular collection structure in ruby because of this.

Arrays have many benefits, but what if the data is all strings or floats and can't be indexed by a simple number key? That's where hashes come in!

A Hash: A collection of objects indexed as [key] and [value] pairs where the keys and the values are assignable and can be any object type.

![](my_hash.png)

As you can see, I have integer, string and boolean keys-- Hashes give you more freedom than arrays to classify your data, though it can make the data more complicated to access and manipulate.

It's also important to remember that while you can have an unlimited number of similar values, you can only have one of each key.

![](g-b-hash.png)

"bad_hash" has two identical keys, so if we ask ruby to return bad_hash[favorite_music], ruby will be confused.

"good_hash" has unique keys that will keep ruby happy.

Depending on what your data looks like and what you're trying to achieve, knowing how to get the most out of Arrays and Hashes in Ruby can make your job much easier!

Cheers!

George