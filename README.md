# Memoize

`memoize` returns cached result of function call when inputs were not changed from previous invocation. 

## Examples

`memo1`, `memo2`, ... `memo10` compare arguments with `==` operator:


```dart
import 'dart:math';
import 'package:memoize/memoize.dart';

void main() {
  var rect1 = new Rectangle<int>(0, 0, 10, 10);
  var rect2 = new Rectangle<int>(0, 0, 10, 10);
  
  var func = memo1((Rectangle<int> a) => a.width * a.height);

  print(func(rect1));
  print(func(rect2)); // cached result is returned
}
```

`imemo1`, `imemo2`, ... `imemo10` compare arguments with `identical` function:

```dart
import 'dart:math';
import 'package:memoize/memoize.dart';

void main() {
  var rect1 = new Rectangle<int>(0, 0, 10, 10);
  var rect2 = new Rectangle<int>(0, 0, 10, 10);
  
  var func = imemo1((Rectangle<int> a) => a.width * a.height);

  print(func(rect1));
  print(func(rect1)); // cached - same object instance
  print(func(rect2)); // not cached - different object instance
}
```

`memo0` caches result on first call and can be used as lazy cache:

```dart
import 'dart:math';
import 'package:memoize/memoize.dart';

void main() {
  var func = memo0(() => new Rectangle<int>(0, 0, 10, 10));
  
  print(func());
  print(func()); // cached - same object instance
}
```

## Contributors

  - [Brian Egan](https://gitlab.com/users/brianegan/projects)