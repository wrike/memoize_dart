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
  print('Some heavy calculations done 99 times with 6 different inputs:');
  List<double> numbers = [10000, 4206969, 777, 21372137, 99999999, 10000];
  var w = Stopwatch()..start();
  for (int x = 0; x < 99; x++) {
    for (var n in numbers) {
      heavyCalc(n);
    }
  }
  print('\tNo cache: ${w.elapsedMilliseconds}ms');

  w.reset();
  var cacheSqrt = memo1(heavyCalc);
  for (int x = 0; x < 99; x++) {
    for (var n in numbers) {
      cacheSqrt(n);
    }
  }
  print('\tWith cache: ${w.elapsedMilliseconds}ms');
}
