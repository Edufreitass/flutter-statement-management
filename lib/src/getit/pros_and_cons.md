Pros

- Is straightforward, easier to use, and not dependant on Flutter, so can be used with any Dart code.
- Extremely fast, easy to learn/use, doesn’t clutter your UI tree with special Widgets to access your data.

Cons

- You may have to manually dispose or unregister items as they are not intrinsically part of the widget tree.
- Suffers from the issue of providing instances of the same type, however it does expose a name field when registering, which offers a reasonable workaround for the issue.
- Some developers may not like the global nature of GetIt singletons, preferring the more restrictive scoping models of riverpod or Provider, while other developers may view this as a benefit.