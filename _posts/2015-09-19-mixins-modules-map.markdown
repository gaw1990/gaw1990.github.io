---
layout: post
title:  "mixins, modules and .map"
date:   2015-09-19 14:00:22 -0600
categories:
---

There are a series of methods (like .sort and .group_by) that iterate over arrays using the enumerable mixin module. A module is a block of code that can be called from any class regardless of that class’s inheritance.

In Ruby, classes have what’s called "single inheritance" meaning that they can only inherit behavior from one other class. Modules let us bring reusable blocks of code into a class from outside the direct inheritance structure. Another name for a module we bring into a class or method is a "mix-in" named because we’re mixing in code from outside of inheritance.

".map" is a method that iterates over each item in an array and returns a modified array. ".map" lives in the "enumerable" module, which is essentially a bunch of methods packaged together into a module that we can mix-in and use without having to define the method every time we want to use it. Enumerable methods include many methods that let us iterate through collections like ".each" and ".select".

The method ".map" works like this:

``` some_array = [1, 2, 3, 4, 5] ```

``` some_array.map { |array_item| array_item + 1 } ```

``` #=> [2, 3, 4, 5, 6] ```

In this case it took every array item and added one to it. It returns a modified array, but it doesn’t actually alter the original array. In other words it’s a non-destructive method, so if we call:

``` some_array #=> [1, 2, 3, 4, 5] ```

We can see it hasn’t been permanently changed.

If we **DO** want to permanently change the array, we can add a "bang" onto the method and we get the method ".map!".

``` some_array = [1, 2, 3, 4, 5] ```

``` some_array.map! { |array_item| # using .map! not .map array_item + 1 } ```

``` #=> [2, 3, 4, 5, 6] ```

We’ll get the same return with ".map!" as we did with ".map", but now if we call some_array again we’ll get:

``` some_array #=> [2, 3, 4, 5, 6] ```

some_array has been permanently altered.