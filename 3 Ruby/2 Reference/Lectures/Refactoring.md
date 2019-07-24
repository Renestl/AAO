# Refactoring (code smells)

**Too many parameters**: The more parameters a method has, the greater the chance that it is too coupled to code that invokes it. Many parameters may also be a sign of an excessively complex method.

**Data clump**: if you see a group of data always being passed around together, this is usually a good candidate for refactoring out into an object. For example `start_date` and `end_date` might be pulled out into a `date_range` object.

**Long method chains:** long method chains can often be a sign that you're violating the [Law of Demeter](https://en.wikipedia.org/wiki/Law_of_Demeter): only talk to your "neighbors", only use one dot.

LoD has disadvantages (see the wiki article); if taken too literally you end up with overly wide interfaces. However, the longer your method chains get, the more likely you should apply LoD.

**Indecent Exposure:** Classes should share the bare minimum interface with the outside world. If you don't have a compelling reason to make a method or variable public, hide it. Other classes will interact with the public surface of the class; any change to the public surface will necessitate changes to interacting classes. Minimizing exposure will better enable change.

Indecent exposure may result in coupling that is too tight. The more extensive your classes' interface, the more tightly other classes can latch on to it.

A complicated interface can also signal a class that is doing too much.

To understand how tightly coupled your classes are, ask yourself if you changed the internals of one class, would you have to change things in the other?

**Speculative Generality:** Follow the principle of YAGNI ('You ain't gonna need it'). Don't solve abstract problems: wait until you have a concrete problem.

**God object:** A god object is one that is very tightly connected to all the other objects in the system. Good OO design results in classes that are lightly coupled. A good class delegates responsibility as necessary to other objects.

**Dead code:** don't leave commented-out (or otherwise unused) code in your code base.

Ben Orenstein's classic talk: [Refactoring: From Good to Great](http://confreaks.tv/videos/aloharuby2012-refactoring-from-good-to-great)