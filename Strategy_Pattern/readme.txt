The Strategy Pattern defines a family of algorithms, encapsulates each one,
and makes them interchangeable.

Strategy lets the algorithm vary independently from clients that use it.

for better understanding
Imagine you have Animal superclass with those behaviors eat(), walk() and fly() .

now you created two subclasses Bird and Dog that inherit Animal superclass behaviors.

hopefully, now you catch the problem Bird can fly() but Dog can not!!.

Hmm you think 🤔 ok i will override fly() for Dog subclass and change the behavior this way it can’t fly.

A little while ,you want to add more animals subclasses but it gets bigger and you have to override fly() behavior for each one of them .

as you can see that’s a lot of duplicate which violate reuse of code that OOP promises with inheritance .

now you are asking what’s the solution ?!

As you can see, only one behavior fly()that keep changes.
so here is another OO rule “Identify the aspects of your application that vary and separate them from what stays the same” .
that mean take what varies and “Encapsulate” it so it will not affect rest of the code.

Now ,we will pull fly() out of the superclass and this behavior will live in a separate class
that implements a particular behavior interface.
this way Animal superclass won’t need to know any of the implementation details for this behavior.


Now ,This is The Strategy Pattern .