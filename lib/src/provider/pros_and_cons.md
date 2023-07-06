Pros

- If you are new to Flutter this is probably the approach you should start with. Is easy to understand and it doesn’t use much code.
- Devtool friendly — using Provider, the state of your application will be visible in the Flutter devtool
- Simplify data allocation and disposal of resources (data).

Cons

- May accidentally call unnecessary updates. Not every change in the state of an object needs to trigger an update. However, if you are using Provider then they will trigger an update all the time when there is a change.
- Scalability