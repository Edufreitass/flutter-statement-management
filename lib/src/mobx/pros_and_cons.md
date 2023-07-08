Pros

- Easy to connect the reactive app data with the UI.
- Implements the observer pattern with a friendly syntax and simple core API that makes learning easier.
- It is scalable and can be used in large projects.
- Good performance and easy to test.
- Less boilerplate beacause code generation.

Cons

- It takes some time to generate the code, and You’ll probably need to run the code generator for every change to your store
- You only know that state changes, but not the exact event that caused it. In more complex apps this lack of traceability may pose a problem, since it makes debugging and managing state changes more obscure.
- The Mobx generators are great in increasing simplicity, but at the same time add another level of abstraction. They make it harder to really see and understand what goes on under the hood.