import 'package:func/func.dart';

/// Returns memoized version of [func].
///
/// Argument is checked for equality with [==] operator.
/// Evaluation of [func] is delayed until first call to memoized version.
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

/// Returns memoized version of [func].
///
/// Arguments are checked for equality with [==] operator.
/// Evaluation of [func] is delayed until first call to memoized version.
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


/// Returns memoized version of [func].
///
/// Argument is checked for equality with [identical] call.
/// Evaluation of [func] is delayed until first call to memoized version.
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

/// Returns memoized version of [func].
///
/// Arguments are checked for equality with [identical] call.
/// Evaluation of [func] is delayed until first call to memoized version.
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
