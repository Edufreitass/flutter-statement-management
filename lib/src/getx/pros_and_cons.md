Pros

- It’s a Simple State Updater, made in just a few lines of code. It was made simple, to have the least CPU impact, and just to fulfill a single purpose and spend the minimum resources possible.
- It’s a powerful State Manager, it doesn’t work with variables, but flows, everything in it are Streams under the hood.
- It is literally a BLoC approach, without code generators or decorations. You can turn anything into an “Observable” with just a .obs .

Cons

- Can exists a lot of issues which can be also duplicit. Here it is obviously that nobody cares about issues like: solving, answering, tagging, remove duplicity, etc.
- GetX is doing too much things and this project is too big for only one person.
- Problems with hot reload — GetX has their own dependency injection system and that is used for almost every module in GetX, but it is not stable yet.
- Write unit and widget tests is really very hard with GetX and in some cases is imposible test some features.