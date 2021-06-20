Inheritance is one form of extension, but not necessarily the best way to achieve flexibility
in our designs.
"Closed for modification open for extension" OO rule, In our designs we should allow behavior
to be extended without the need to modify existing code.

Composition and delegation can often be used to add new behaviors at runtime,
which is the opposite with inheritance which determine behaviors in compile time.

The Decorator Pattern provides an alternative to subclassing for
extending behavior at runtime.

The Decorator Pattern involves a set of decorator classes that are used to wrap concrete components.

Decorator classes mirror the type of the components they
decorate. (In fact, they are the 
same type as the components they decorate, either through inheritance or interface implementation.)

Decorators change the behavior of their components by adding new functionality before and/or
after (or even in place of) method 
calls to the component.

You can wrap a component with any number of decorators.

Decorators are typically transparent to the client of the component; that is, unless the client is relying on the
component’s concrete type.

Decorators can result in many small objects in our design, and overuse can be complex.

ref "head First Design Patterns: A Brain-Friendly Guide"