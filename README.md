
# Design Patterns In The Apex Programming Language
![CI Workflow](https://github.com/bdJohnson72/Design-Patterns-In-Apex/actions/workflows/main.yml/badge.svg)


![recipes-logo](recipes-logo.png)

Few things have helped me more in my career than understanding how you use the Object Oriented Features of Apex to write
code that is flexible, testable and maintainable. I have done quite a few YouTube videos on this topic and have a lot
more to do. I was not happy with my previous Repo and its organization. This is an attempt of my part to give back to
the community with repo that offers implementations of all the class Gang of Four patterns in Apex. I grant you that my
implementations will often be trivial and contrived. But I hope that helps make the underlying ideas easy to understand.

If I have also published a video about the pattern I have added a link to in the heading.

## Table of Contents 
## Creational Patterns

Design patterns that are concerned with the creation of objects

#### [The Simple Factory Pattern](https://github.com/bdJohnson72/Design-Patterns-In-Apex/tree/master/force-app/main/default/classes/SimpleFactory)

- One of my every day go to patterns. Code is based on Head First Design Patterns
- [UML diagram](https://github.com/bdJohnson72/Design-Patterns-In-Apex/blob/master/UML/simple%20factory/Simple%20Factory.png)

#### [The Reflective Factory](https://github.com/bdJohnson72/Design-Patterns-In-Apex/tree/master/force-app/main/default/classes/ReflectiveFactory)

-[Watch on YouTube](https://www.youtube.com/watch?v=zNuOWwIl-xo&t=1322s)

This can be a bit more involved but is also the ultimate in closed for modification but open for extension. By making
our factory reflective we never need to update it when we add new concrete types.

- Unique to Apex and Salesforce. Refactor the simple factory pattern with custom metadata. Wow your colleagues with the
  Type class. One of my favorite Apex party tricks.

#### [The Factory Method](https://github.com/bdJohnson72/Design-Patterns-In-Apex/tree/master/force-app/main/default/classes/SimpleFactory)

-[Watch on YouTube](https://www.youtube.com/watch?v=xC86Aof8bV4&t=10s)

Another implementation using the pizza example from Head First Design Patterns. What do we do if we want our Pizza Store
to access different factories?

#### [The Singleton](https://github.com/bdJohnson72/Design-Patterns-In-Apex/tree/master/force-app/main/default/classes/singleton)

-[Watch on YouTube](https://www.youtube.com/watch?v=f4n0oyYcvtw)

An easy pattern to understand and always useful for keeping your governer limits under control

## Behavioral Design Patterns

These patterns are all about the communication between objects. How can objects cooperate to perform tasks.

### [The Observer](https://github.com/bdJohnson72/Design-Patterns-In-Apex/tree/master/force-app/main/default/classes/Observer)
-[Watch on YouTube](https://www.youtube.com/watch?v=w-yKRDCuDPI)

When one object changes state we want to notify all the depenents. But we want to publisher and subscribers to be
loosely coupled.

##Refactoring
I have begun to add some of the examples from [Martin Fowler's Refactoring](amazon.com/Refactoring-Improving-Existing-Addison-Wesley-Signature/dp/0134757599/ref=sr_1_1?keywords=refactoring&qid=1655299896&s=books&sprefix=refacto%2Cstripbooks%2C68&sr=1-1)
and [Joshua Kerievsky's Refactoring to Patterns](amazon.com/Refactoring-Patterns-Joshua-Kerievsky/dp/0321213351)

- [Composing Methods](github.com/bdJohnson72/Design-Patterns-In-Apex/tree/master/force-app/main/default/classes/Refactoring/composing_methods)
- [Simplifying Conditionals](github.com/bdJohnson72/Design-Patterns-In-Apex/tree/master/force-app/main/default/classes/Refactoring/simplify_%20conditionals)

## Read All About It

Nothing in this repo would be possible without the books below. And most of the implementations will be based on ones
found in these books. If they are not on your shelf they should be.

- [Design Patterns: Elements of Reusable Object-Oriented Software](https://www.amazon.com/Design-Patterns-Elements-Reusable-Object-Oriented/dp/0201633612/ref=sr_1_1?dchild=1&keywords=Design+Patterns&qid=1631976412&sr=8-1)
- [Head First Design Patterns: Building Extensible and Maintainable Object-Oriented Software](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Apex Design Patterns](https://www.amazon.com/Apex-Design-Patterns-Jitendra-Zaa/dp/178217365X/ref=sr_1_3?dchild=1&keywords=apex+design+patterns&qid=1631976687&sr=8-3)
