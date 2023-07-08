Pros

- Riverpod is stable and actively maintained.
- Riverpod does not directly depend on the widget tree. The providers are declared globally and can be used anywhere in the application
- Write testable code and keeping logic outside the widget tree

Cons

- Riverpod give you too much freedom to implement state on your app. that can be a challenge for new developers to choose best approach.
- It encourages a bad antipattern of scattering shared state all throughout your widget tree. This can lead to code being very hard to find (non-centralized), and makes debugging harder to follow as there are excessive dependency chains and couplings between providers.