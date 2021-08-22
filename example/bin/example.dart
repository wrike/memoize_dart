import 'dart:math' as math;

import 'package:memoize/memoize.dart';

num heavyCalc(num number) {
  num sum = 0;
  for (int x = 0; x < 999999; x++) {
    sum += math.sqrt(number);
  }
  return sum;
}

void main(List<String> arguments) {
  const loops = 99;
  print('Some heavy calculations done $loops times with 6 different inputs:');
  List<double> numbers = [10000, 4206969, 777, 21372137, 99999999, 10000];
  var sumNormal = 0.0;
  var w = Stopwatch()..start();
  for (int x = 0; x < loops; x++) {
    for (var n in numbers) {
      sumNormal += heavyCalc(n);
    }
  }
  print('\tNo cache: ${w.elapsedMilliseconds}ms');

  var sumCache = 0.0;
  w.reset();
  var cacheSqrt = memo1(heavyCalc);
  for (int x = 0; x < loops; x++) {
    for (var n in numbers) {
      sumCache += cacheSqrt(n);
    }
  }
  print('\tWith cache: ${w.elapsedMilliseconds}ms');
  if (sumNormal == sumCache) {
    print("...and results match!");
  } else {
    print("...but results don't match... guess we broke something :D");
  }
}
