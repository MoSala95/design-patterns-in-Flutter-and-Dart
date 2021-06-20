The Observer Pattern defines a one-to-many dependency between objects so that when one
object changes state, all of its dependents are notified and updated automatically.

Subjects, or as we also know them, Observables, update Observers using a common interface.

Observers are loosely coupled in that the Observable knows nothing about them, other
than that they implement the Observer Interface.

You can pull data from the Observable when using the pattern .

ref:"Head First Design Patterns: A Brain-Friendly Guide"