---
layout: post
title:  "if require_brain_fuel? == true"
date:   2015-09-25 14:00:22 -0600
categories:
---

# ruby coffee.rb

Relating objects and processes in programming to examples from everyday life can be an excellent teaching tool. In this blog post I'm going to use a Ruby class to model a coffee machine. I think it's a good object to model because it has a couple simple variables and methods. Plus everyone's familiar with coffee machines, chances are you have a cup of coffee infront of you right now!

The first thing in our CoffeeMachine class would be an initialize method with instance variables for the water level, coffee level and one boolean variable for whether the machine is warmed up.

``` class CoffeeMachine ```

``` def initialize(coffee_beans) ```

``` @water_level = 0 #(0-100) ```

``` @bean_level = coffee_beans_grams ```

``` @warmed_up = false ```

``` end ```

``` end ```

We have our @water_level variable to show us how much water is in the machine, our @bean_level gets it's value from the coffee_beans argument because I imagine we'll want to use the different kinds of coffee on our shelf (we're connoisseurs, after all) and finally our warmed_up variable is a boolean that lets us know if the coffee machine is ready to brew.

Now we have our water, beans and heat variables we need some methods to actually make the coffee. The first method will check if we have enough water and beans for the amount of cups (the argument cups) we want and if the machine is warmed up. Something like this:

``` def ready_to_brew?(cups) ```

``` if @water_level ``` (10 * cups) && @bean_level ``` (10 * cups) && @warmed_up  ```== true

``` # if the water level at least 10% per cup wanted, bean level at least 10  ```grams per cup needed and machine warmed up

``` return true ```

``` else ```

``` return false ```

``` end ```

So now we have a method to check if the machine is ready to brew, but what if it returns false because there's not enough water?

``` def fill ```

``` #add water ```

``` end ```

A little fill method should take care of our water (if you have to buy beans that's your responsiblity, not this program's). Now we have all of our ingredients and ready_to_brew? returned true, let's brew up a brew method.

``` def brew(cups) ```

``` #coffee + heat + water ```

``` @water_level = @water_level - (10 * cups) ```

``` @bean_level = @bean_level - (10 * cups) ```

``` return #cup_of_cofee ```

``` end ```

Awesome! There you go. The beans and water used have been subtracted from their respective variables and the brew method returned us a cup of coffee. Now you can go write some classes of your own with all your new found energy!