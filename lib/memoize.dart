import 'package:func/func.dart';

/// Checks 1 argument for equality with [==] operator and returns cached result if it was not changed.
Func1<A, R> memo1<A, R>(Func1<A, R> func) {
  A prevArg;
  R prevResult;
  bool isInitial = true;

  return ((A arg) {
    if (!isInitial && arg == prevArg) {
      return prevResult;
    } else {
      prevArg = arg;
      prevResult = func(arg);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 2 arguments for equality with [==] operator and returns cached result if they were not changed.
Func2<A, B, R> memo2<A, B, R>(Func2<A, B, R> func) {
  A prevArg1;
  B prevArg2;
  R prevResult;
  bool isInitial = true;

  return ((A arg1, B arg2) {
    if (!isInitial && arg1 == prevArg1 && arg2 == prevArg2) {
      return prevResult;
    } else {
      prevArg1 = arg1;
      prevArg2 = arg2;
      prevResult = func(arg1, arg2);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 3 arguments for equality with [==] operator and returns cached result if they were not changed.
Func3<A, B, C, R> memo3<A, B, C, R>(Func3<A, B, C, R> func) {
  A prevArg1;
  B prevArg2;
  C prevArg3;
  R prevResult;
  bool isInitial = true;

  return ((A arg1, B arg2, C arg3) {
    if (!isInitial && arg1 == prevArg1 && arg2 == prevArg2 && arg3 == prevArg3) {
      return prevResult;
    } else {
      prevArg1 = arg1;
      prevArg2 = arg2;
      prevArg3 = arg3;
      prevResult = func(arg1, arg2, arg3);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 1 argument for equality with [identical] call and returns cached result if it was not changed.
Func1<A, R> imemo1<A, R>(Func1<A, R> func) {
  A prevArg;
  R prevResult;
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

/// Checks 2 arguments for equality with [identical] call and returns cached result if they were not changed.
Func2<A, B, R> imemo2<A, B, R>(Func2<A, B, R> func) {
  A prevArg1;
  B prevArg2;
  R prevResult;
  bool isInitial = true;

  return ((A arg1, B arg2) {
    if (!isInitial && identical(arg1, prevArg1) && identical(arg2, prevArg2)) {
      return prevResult;
    } else {
      prevArg1 = arg1;
      prevArg2 = arg2;
      prevResult = func(arg1, arg2);
      isInitial = false;

      return prevResult;
    }
  });
}

/// Checks 3 arguments for equality with [identical] call and returns cached result if they were not changed.
Func3<A, B, C, R> imemo3<A, B, C, R>(Func3<A, B, C, R> func) {
  A prevArg1;
  B prevArg2;
  C prevArg3;
  R prevResult;
  bool isInitial = true;

  return ((A arg1, B arg2, C arg3) {
    if (!isInitial && identical(arg1, prevArg1) && identical(arg2, prevArg2) && identical(arg3, prevArg3)) {
      return prevResult;
    } else {
      prevArg1 = arg1;
      prevArg2 = arg2;
      prevArg3 = arg3;
      prevResult = func(arg1, arg2, arg3);
      isInitial = false;

      return prevResult;
    }
  });
}
