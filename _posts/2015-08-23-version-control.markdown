---
layout: post
title:  "Version Control"
date:   2015-08-23 14:00:22 -0600
categories: 
---

# And why you (as a developer) need it!


-Version Control--

When developers work on collaborative projects, it’s a challenge to keep everyone up to date with each other’s edits and saves while maintaining one bug-free and usable version. To manage these issues we use “Version Control” systems.

Version control could be as simple as a college student classifying an essay as “first draft”, making edits in the margins and revising a “working draft” then polishing it up and submitting a “final draft”. The basic advantages of version control remain:

1\. an accessible history of edits and saves

2\. versions that can be reverted to (if new edits don’t work)

Let’s say now the next assignment is one essay to be worked on by the entire class, with separate groups working on grammar, vocabulary, formatting, and research— That’s sort of like working on a piece of software and it can get complicated.

To handle these large collaborative projects, developers use systems like git and GitHub to understand the who, when and why of edits as well as keeping a central, up to date version of the project.

--Git--

Git is a program that allows users to work on a project through evolving iterations, while always keeping a history of changes that can be reverted to. Git lives on your local computer and keeps track of changes through commits (like checkpoints or save points) and versions.

To borrow an often used analogy, git’s version control system can be compared to a tree. The trunk of the tree being the master (a functional version that can be reverted back to) and the branches being working versions (new changes that are in progress or haven’t been completely tested).

The implementation of a change might look like this:

1\. a copy of the master branch is created

2\. an edit is made to our copy

3\. the edit is tested until we’re confident it doesn’t interfere with the rest of the program

4\. the edit is “committed” along with a “commit message” letting us know where and why we made an edit

5\. when we’re confident in the changes we merge the branch back into the trunk, creating an updated master branch that we can now make more branches from.

The biggest benefit of this system is being able to experiment and play with our project without having to compromise it’s integrity.

--GitHub--

If it’s our project is collaborative, there will be multiple people making and approving changes. That’s where GitHub comes in. GitHub allows teams to have a master version that’s available to all members, and a central place to implement their edits.

GitHub can be thought of as a bigger tree available to all collaborators where you can push changes up and pull the most current version down. The biggest advantage of GitHub is it allows teams working remotely to avoid stepping on each others toes while building projects.

GitHub is simple and extremely user friendly. It also has a huge social aspect in which you can make your projects public and anyone can come in and contribute changes. Do yourself a favor and check it out!

[Git download](https://git-scm.com/downloads) [GitHub homepage](https://GitHub.com)