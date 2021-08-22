import 'dart:collection';

import 'function_defs.dart';

// Stolen from flutter
// https://api.flutter.dev/flutter/foundation/listEquals.html
bool _listEquals<T>(List<T>? a, List<T>? b) {
  if (a == null) return b == null;
  if (b == null || a.length != b.length) return false;
  if (identical(a, b)) return true;
  for (int index = 0; index < a.length; index += 1) {
    if (a[index] != b[index]) return false;
  }
  return true;
}

int _listHashCode(List list) {
  var hashCode = 0;
  for (final el in list) hashCode = hashCode ^ el.hashCode;
  return hashCode;
}

/// Lazy evaluates function and returns cached result on each call.
Func0<R> memo0<R>(Func0<R> func) {
  late R prevResult;
  bool isInitial = true;

  return (() {
    if (!isInitial) {
      return prevResult;
    } else {
      prevResult = func();
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 1 argument for equality with [==] operator and returns the cached
/// result if it was not changed.
Func1<A, R> memo1<A, R>(Func1<A, R> func) {
  final argsToOutput = HashMap<List, R>(
    equals: (a, b) => _listEquals(a, b),
    hashCode: (l) => _listHashCode(l),
  );

  return ((A aA) {
    final cached = argsToOutput[[aA]];
    if (cached != null) {
      return cached;
    } else {
      final res = func(aA);
      argsToOutput[[aA]] = res;
      return res;
    }
  });
}

/// Checks 2 arguments for equality with [==] operator and returns the cached
/// result if they were not changed.
Func2<A, B, R> memo2<A, B, R>(Func2<A, B, R> func) {
  final argsToOutput = HashMap<List, R>(
    equals: (a, b) => _listEquals(a, b),
    hashCode: (l) => _listHashCode(l),
  );

  return ((A aA, B aB) {
    final cached = argsToOutput[[aA, aB]];
    if (cached != null) {
      return cached;
    } else {
      final res = func(aA, aB);
      argsToOutput[[aA, aB]] = res;
      return res;
    }
  });
}

/// Checks 3 arguments for equality with [==] operator and returns the cached
/// result if they were not changed.
Func3<A, B, C, R> memo3<A, B, C, R>(Func3<A, B, C, R> func) {
  final argsToOutput = HashMap<List, R>(
    equals: (a, b) => _listEquals(a, b),
    hashCode: (l) => _listHashCode(l),
  );

  return ((A aA, B aB, C aC) {
    final cached = argsToOutput[[aA, aB, aC]];
    if (cached != null) {
      return cached;
    } else {
      final res = func(aA, aB, aC);
      argsToOutput[[aA, aB, aC]] = res;
      return res;
    }
  });
}

/// Checks 4 arguments for equality with [==] operator and returns the cached
/// result if they were not changed.
Func4<A, B, C, D, R> memo4<A, B, C, D, R>(Func4<A, B, C, D, R> func) {
  final argsToOutput = HashMap<List, R>(
    equals: (a, b) => _listEquals(a, b),
    hashCode: (l) => _listHashCode(l),
  );

  return ((A aA, B aB, C aC, D aD) {
    final cached = argsToOutput[[aA, aB, aC, aD]];
    if (cached != null) {
      return cached;
    } else {
      final res = func(aA, aB, aC, aD);
      argsToOutput[[aA, aB, aC, aD]] = res;
      return res;
    }
  });
}

/// Checks 5 arguments for equality with [==] operator and returns the cached
/// result if it was not changed.
Func5<A, B, C, D, E, R> memo5<A, B, C, D, E, R>(Func5<A, B, C, D, E, R> func) {
  final argsToOutput = HashMap<List, R>(
    equals: (a, b) => _listEquals(a, b),
    hashCode: (l) => _listHashCode(l),
  );

  return ((A aA, B aB, C aC, D aD, E aE) {
    final cached = argsToOutput[[aA, aB, aC, aD, aE]];
    if (cached != null) {
      return cached;
    } else {
      final res = func(aA, aB, aC, aD, aE);
      argsToOutput[[aA, aB, aC, aD, aE]] = res;
      return res;
    }
  });
}

/// Checks 6 arguments for equality with [==] operator and returns the cached
/// result if it was not changed.
Func6<A, B, C, D, E, F, R> memo6<A, B, C, D, E, F, R>(
    Func6<A, B, C, D, E, F, R> func) {
  final argsToOutput = HashMap<List, R>(
    equals: (a, b) => _listEquals(a, b),
    hashCode: (l) => _listHashCode(l),
  );

  return ((A aA, B aB, C aC, D aD, E aE, F aF) {
    final cached = argsToOutput[[aA, aB, aC, aD, aE, aF]];
    if (cached != null) {
      return cached;
    } else {
      final res = func(aA, aB, aC, aD, aE, aF);
      argsToOutput[[aA, aB, aC, aD, aE, aF]] = res;
      return res;
    }
  });
}

/// Checks 7 arguments for equality with [==] operator and returns the cached
/// result if it was not changed.
Func7<A, B, C, D, E, F, G, R> memo7<A, B, C, D, E, F, G, R>(
    Func7<A, B, C, D, E, F, G, R> func) {
  final argsToOutput = HashMap<List, R>(
    equals: (a, b) => _listEquals(a, b),
    hashCode: (l) => _listHashCode(l),
  );

  return ((A aA, B aB, C aC, D aD, E aE, F aF, G aG) {
    final cached = argsToOutput[[aA, aB, aC, aD, aE, aF, aG]];
    if (cached != null) {
      return cached;
    } else {
      final res = func(aA, aB, aC, aD, aE, aF, aG);
      argsToOutput[[aA, aB, aC, aD, aE, aF, aG]] = res;
      return res;
    }
  });
}

/// Checks 8 arguments for equality with [==] operator and returns the cached
/// result if it was not changed.
Func8<A, B, C, D, E, F, G, H, R> memo8<A, B, C, D, E, F, G, H, R>(
    Func8<A, B, C, D, E, F, G, H, R> func) {
  final argsToOutput = HashMap<List, R>(
    equals: (a, b) => _listEquals(a, b),
    hashCode: (l) => _listHashCode(l),
  );

  return ((A aA, B aB, C aC, D aD, E aE, F aF, G aG, H aH) {
    final cached = argsToOutput[[aA, aB, aC, aD, aE, aF, aG, aH]];
    if (cached != null) {
      return cached;
    } else {
      final res = func(aA, aB, aC, aD, aE, aF, aG, aH);
      argsToOutput[[aA, aB, aC, aD, aE, aF, aG, aH]] = res;
      return res;
    }
  });
}

/// Checks 9 arguments for equality with [==] operator and returns the cached
/// result if it was not changed.
Func9<A, B, C, D, E, F, G, H, I, R> memo9<A, B, C, D, E, F, G, H, I, R>(
    Func9<A, B, C, D, E, F, G, H, I, R> func) {
  final argsToOutput = HashMap<List, R>(
    equals: (a, b) => _listEquals(a, b),
    hashCode: (l) => _listHashCode(l),
  );

  return ((A aA, B aB, C aC, D aD, E aE, F aF, G aG, H aH, I aI) {
    final cached = argsToOutput[[aA, aB, aC, aD, aE, aF, aG, aH, aI]];
    if (cached != null) {
      return cached;
    } else {
      final res = func(aA, aB, aC, aD, aE, aF, aG, aH, aI);
      argsToOutput[[aA, aB, aC, aD, aE, aF, aG, aH, aI]] = res;
      return res;
    }
  });
}

/// Checks 10 arguments for equality with [==] operator and returns cached
/// result if it was not changed.
Func10<A, B, C, D, E, F, G, H, I, J, R> memo10<A, B, C, D, E, F, G, H, I, J, R>(
    Func10<A, B, C, D, E, F, G, H, I, J, R> func) {
  final argsToOutput = HashMap<List, R>(
    equals: (a, b) => _listEquals(a, b),
    hashCode: (l) => _listHashCode(l),
  );

  return ((A aA, B aB, C aC, D aD, E aE, F aF, G aG, H aH, I aI, J aJ) {
    final cached = argsToOutput[[aA, aB, aC, aD, aE, aF, aG, aH, aI, aJ]];
    if (cached != null) {
      return cached;
    } else {
      final res = func(aA, aB, aC, aD, aE, aF, aG, aH, aI, aJ);
      argsToOutput[[aA, aB, aC, aD, aE, aF, aG, aH, aI, aJ]] = res;
      return res;
    }
  });
}

/// Checks 1 argument for equality with [identical] call and returns the cached
/// result if it was not changed.
Func1<A, R> imemo1<A, R>(Func1<A, R> func) {
  late A prevArg;
  late R prevResult;
  bool isInitial = true;

  return ((A arg) {
    if (!isInitial && identical(arg, prevArg)) {
      return prevResult;
    } else {
      prevArg = arg;
      prevResult = func(arg);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 2 arguments for equality with [identical] call and returns the cached
/// result if they were not changed.
Func2<A, B, R> imemo2<A, B, R>(Func2<A, B, R> func) {
  late A prevArgA;
  late B prevArgB;
  late R prevResult;
  bool isInitial = true;

  return ((A argA, B argB) {
    if (!isInitial && identical(argA, prevArgA) && identical(argB, prevArgB)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevResult = func(argA, argB);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 3 arguments for equality with [identical] call and returns the cached
/// result if they were not changed.
Func3<A, B, C, R> imemo3<A, B, C, R>(Func3<A, B, C, R> func) {
  late A prevArgA;
  late B prevArgB;
  late C prevArgC;
  late R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevResult = func(argA, argB, argC);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 4 arguments for equality with [identical] call and returns the cached
/// result if they were not changed.
Func4<A, B, C, D, R> imemo4<A, B, C, D, R>(Func4<A, B, C, D, R> func) {
  late A prevArgA;
  late B prevArgB;
  late C prevArgC;
  late D prevArgD;
  late R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevResult = func(argA, argB, argC, argD);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 5 arguments for equality with [identical] call and returns cached
/// result if they were not changed.
Func5<A, B, C, D, E, R> imemo5<A, B, C, D, E, R>(Func5<A, B, C, D, E, R> func) {
  late A prevArgA;
  late B prevArgB;
  late C prevArgC;
  late D prevArgD;
  late E prevArgE;
  late R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD) &&
        identical(argE, prevArgE)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevResult = func(argA, argB, argC, argD, argE);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 6 arguments for equality with [identical] call and returns cached
/// result if they were not changed.
Func6<A, B, C, D, E, F, R> imemo6<A, B, C, D, E, F, R>(
    Func6<A, B, C, D, E, F, R> func) {
  late A prevArgA;
  late B prevArgB;
  late C prevArgC;
  late D prevArgD;
  late E prevArgE;
  late F prevArgF;
  late R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD) &&
        identical(argE, prevArgE) &&
        identical(argF, prevArgF)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevResult = func(argA, argB, argC, argD, argE, argF);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 7 arguments for equality with [identical] call and returns cached
/// result if they were not changed.
Func7<A, B, C, D, E, F, G, R> imemo7<A, B, C, D, E, F, G, R>(
    Func7<A, B, C, D, E, F, G, R> func) {
  late A prevArgA;
  late B prevArgB;
  late C prevArgC;
  late D prevArgD;
  late E prevArgE;
  late F prevArgF;
  late G prevArgG;
  late R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF, G argG) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD) &&
        identical(argE, prevArgE) &&
        identical(argF, prevArgF) &&
        identical(argG, prevArgG)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevArgG = argG;
      prevResult = func(argA, argB, argC, argD, argE, argF, argG);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 8 arguments for equality with [identical] call and returns cached
/// result if they were not changed.
Func8<A, B, C, D, E, F, G, H, R> imemo8<A, B, C, D, E, F, G, H, R>(
    Func8<A, B, C, D, E, F, G, H, R> func) {
  late A prevArgA;
  late B prevArgB;
  late C prevArgC;
  late D prevArgD;
  late E prevArgE;
  late F prevArgF;
  late G prevArgG;
  late H prevArgH;
  late R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF, G argG, H argH) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD) &&
        identical(argE, prevArgE) &&
        identical(argF, prevArgF) &&
        identical(argG, prevArgG) &&
        identical(argH, prevArgH)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevArgG = argG;
      prevArgH = argH;
      prevResult = func(argA, argB, argC, argD, argE, argF, argG, argH);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 9 arguments for equality with [identical] call and returns cached
/// result if they were not changed.
Func9<A, B, C, D, E, F, G, H, I, R> imemo9<A, B, C, D, E, F, G, H, I, R>(
    Func9<A, B, C, D, E, F, G, H, I, R> func) {
  late A prevArgA;
  late B prevArgB;
  late C prevArgC;
  late D prevArgD;
  late E prevArgE;
  late F prevArgF;
  late G prevArgG;
  late H prevArgH;
  late I prevArgI;
  late R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF, G argG, H argH,
      I argI) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD) &&
        identical(argE, prevArgE) &&
        identical(argF, prevArgF) &&
        identical(argG, prevArgG) &&
        identical(argH, prevArgH) &&
        identical(argI, prevArgI)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevArgG = argG;
      prevArgH = argH;
      prevArgI = argI;
      prevResult = func(argA, argB, argC, argD, argE, argF, argG, argH, argI);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 10 arguments for equality with [identical] call and returns cached
/// result if they were not changed.
Func10<A, B, C, D, E, F, G, H, I, J, R>
    imemo10<A, B, C, D, E, F, G, H, I, J, R>(
        Func10<A, B, C, D, E, F, G, H, I, J, R> func) {
  late A prevArgA;
  late B prevArgB;
  late C prevArgC;
  late D prevArgD;
  late E prevArgE;
  late F prevArgF;
  late G prevArgG;
  late H prevArgH;
  late I prevArgI;
  late J prevArgJ;
  late R prevResult;
  bool isInitial = true;

  return ((A argA, B argB, C argC, D argD, E argE, F argF, G argG, H argH,
      I argI, J argJ) {
    if (!isInitial &&
        identical(argA, prevArgA) &&
        identical(argB, prevArgB) &&
        identical(argC, prevArgC) &&
        identical(argD, prevArgD) &&
        identical(argE, prevArgE) &&
        identical(argF, prevArgF) &&
        identical(argG, prevArgG) &&
        identical(argH, prevArgH) &&
        identical(argI, prevArgI) &&
        identical(argJ, prevArgJ)) {
      return prevResult;
    } else {
      prevArgA = argA;
      prevArgB = argB;
      prevArgC = argC;
      prevArgD = argD;
      prevArgE = argE;
      prevArgF = argF;
      prevArgG = argG;
      prevArgH = argH;
      prevArgI = argI;
      prevArgJ = argJ;
      prevResult =
          func(argA, argB, argC, argD, argE, argF, argG, argH, argI, argJ);
      isInitial = false;

      return prevResult;
    }
  });
}
