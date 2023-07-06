Pros

- Know what state our application is in at any point in time.
- Easily test every case to make sure our app is responding appropriately.
- Record every single user interaction in our application so that we can make data-driven decisions.
- Develop fast and reactive apps.
- Better performance for large data sizes.

Cons

- Effective only if you have a big application.
- You need to use streams in both directions which may create more boilerplate than Provider.
- It can be too limiting in complex scenarios because it allows creating BLoCs that deal only one input and one output.
- May lead to code duplication, especially if you need to implement similar business logic in multiple parts of your app.