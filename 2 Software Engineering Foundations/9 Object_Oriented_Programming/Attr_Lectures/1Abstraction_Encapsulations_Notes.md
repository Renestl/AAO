# Object Oriented Programming

Object Oriented Programming is a design pattern developers use when building applications.

The goal of OOP is to create programs using objects that interact with each other. We implement classes to create those objects. Let's take a look at 2 pillars of OOP: **Abstraction** and **Encapsulation**.

## Abstraction

In OOP, **abstraction** is the process of exposing essential features of an object while hiding inner details that are not necessary to using the feature. Take this analogy: Many drivers do not understand the mechanical details of how a steering wheel works, but they can still use the steering wheel to drive a car.

## Encapsulation

Similar to abstraction, encapsulation closely relates methods and data attributes together with the hope of preventing misuse. For us, the goal of encapsulation is to give users access to the things that are safe for them to use. Some data we may choose to keep private or purposefully hide from outside users for the sake of security. One common way to encapsulate data attributes is by making them only accessible through methods that we explicitly design.

Ruby classes have some level of encapsulation by default. How so? Well, if we create a class with attributes, those attributes are inaccessible from the outside unless define *getter* or *setter* methods too.

## Wrapping Up

Abstraction and Encapsulation are just two pillars of OOP.