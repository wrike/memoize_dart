import 'dart:math';

import 'package:memoize/memoize.dart';
import 'package:test/test.dart';

void main() {
  group('memo1', () {
    test('should cache result for 1 argument', () {
      var count = 0;
      var func = memo1((int a) => ++count);

      expect(count, 0);
      expect(func(null), 1);
      expect(func(null), 1);
      expect(func(2), 2);
      expect(func(2), 2);
      expect(func(2), 2);
    });

    test('should return result for 1 argument', () {
      var func = memo1((int a) => a * a);

      expect(func(1), 1);
      expect(func(1), 1);
      expect(func(2), 4);
      expect(func(2), 4);
      expect(func(2), 4);
    });

    test('should check arguments by value', () {
      var count = 0;
      var func = memo1((Rectangle<int> a) => ++count);

      var rect = new Rectangle<int>(0, 0, 10, 20);

      expect(count, 0);
      expect(func(rect), 1);
      expect(func(rect), 1);

      rect = new Rectangle<int>(0, 0, 10, 20);
      expect(func(rect), 1);

      rect = new Rectangle<int>(0, 5, 10, 20);
      expect(func(rect), 2);
      expect(func(rect), 2);
    });
  });

  group('imemo1', () {
    test('should cache result for 1 argument', () {
      var count = 0;
      var func = imemo1((int a) => ++count);

      expect(count, 0);
      expect(func(null), 1);
      expect(func(null), 1);
      expect(func(2), 2);
      expect(func(2), 2);
      expect(func(2), 2);
    });

    test('should return result for 1 argument', () {
      var func = imemo1((int a) => a * a);

      expect(func(1), 1);
      expect(func(1), 1);
      expect(func(2), 4);
      expect(func(2), 4);
      expect(func(2), 4);
    });

    test('should check arguments by reference', () {
      var count = 0;
      var func = imemo1((Rectangle<int> a) => ++count);

      var rect = new Rectangle<int>(0, 0, 10, 20);

      expect(count, 0);
      expect(func(rect), 1);
      expect(func(rect), 1);

      rect = new Rectangle<int>(0, 0, 10, 20);
      expect(func(rect), 2);

      rect = new Rectangle<int>(0, 5, 10, 20);
      expect(func(rect), 3);
      expect(func(rect), 3);
    });
  });

  group('memo2', () {
    test('should cache result for 2 arguments', () {
      var count = 0;
      var func = memo2((int a, int b) => ++count);

      expect(count, 0);
      expect(func(null, null), 1);
      expect(func(null, null), 1);
      expect(func(null, 2), 2);
      expect(func(null, 2), 2);
      expect(func(3, 3), 3);
      expect(func(3, 3), 3);
      expect(func(3, 3), 3);
      expect(func(4, 4), 4);
    });

    test('should return result for 2 arguments', () {
      var func = memo2((int a, int b) => a + b);

      expect(func(1, 1), 2);
      expect(func(1, 2), 3);
      expect(func(2, 2), 4);
      expect(func(3, 2), 5);
      expect(func(4, 4), 8);
    });

    test('should check arguments by value', () {
      var count = 0;
      var func = memo2((Rectangle<int> a, Rectangle<int> b) => ++count);

      var rect1 = new Rectangle<int>(0, 0, 10, 20);
      var rect2 = new Rectangle<int>(0, 0, 10, 20);
      var rect3 = new Rectangle<int>(0, 0, 10, 20);
      var rect4 = new Rectangle<int>(0, 5, 10, 20);

      expect(count, 0);
      expect(func(null, null), 1);
      expect(func(rect1, rect2), 2);
      expect(func(rect1, rect2), 2);
      expect(func(rect1, rect3), 2);
      expect(func(rect3, rect1), 2);
      expect(func(rect3, rect4), 3);
      expect(func(rect4, rect4), 4);
    });
  });

  group('imemo2', () {
    test('should cache result for 2 arguments', () {
      var count = 0;
      var func = imemo2((int a, int b) => ++count);

      expect(count, 0);
      expect(func(null, null), 1);
      expect(func(null, null), 1);
      expect(func(null, 2), 2);
      expect(func(null, 2), 2);
      expect(func(3, 3), 3);
      expect(func(3, 3), 3);
      expect(func(3, 3), 3);
      expect(func(4, 4), 4);
    });

    test('should return result for 2 arguments', () {
      var func = imemo2((int a, int b) => a + b);

      expect(func(1, 1), 2);
      expect(func(1, 2), 3);
      expect(func(2, 2), 4);
      expect(func(3, 2), 5);
      expect(func(4, 4), 8);
    });

    test('should check arguments by reference', () {
      var count = 0;
      var func = imemo2((Rectangle<int> a, Rectangle<int> b) => ++count);

      var rect1 = new Rectangle<int>(0, 0, 10, 20);
      var rect2 = new Rectangle<int>(0, 0, 10, 20);
      var rect3 = new Rectangle<int>(0, 0, 10, 20);
      var rect4 = new Rectangle<int>(0, 5, 10, 20);

      expect(count, 0);
      expect(func(null, null), 1);
      expect(func(rect1, rect2), 2);
      expect(func(rect1, rect2), 2);
      expect(func(rect1, rect3), 3);
      expect(func(rect3, rect1), 4);
      expect(func(rect3, rect4), 5);
      expect(func(rect4, rect4), 6);
    });
  });

  group('memo3', () {
    test('should cache result for 3 arguments', () {
      var count = 0;
      var func = memo3((int a, int b, int c) => ++count);

      expect(count, 0);
      expect(func(null, null, null), 1);
      expect(func(null, null, null), 1);
      expect(func(null, null, 2), 2);
      expect(func(1, null, 3), 3);
      expect(func(3, 2, 1), 4);
      expect(func(3, 2, 1), 4);
    });

    test('should return result for 3 arguments', () {
      var func = memo3((int a, int b, int c) => a + b + c);

      expect(func(1, 1, 1), 3);
      expect(func(1, 1, 1), 3);
      expect(func(1, 1, 3), 5);
      expect(func(1, 2, 1), 4);
      expect(func(3, 1, 2), 6);
    });

    test('should check arguments by reference', () {
      var count = 0;
      var func = memo3((Rectangle<int> a, Rectangle<int> b, Rectangle<int> c) => ++count);

      var rect1 = new Rectangle<int>(0, 0, 10, 20);
      var rect2 = new Rectangle<int>(0, 0, 10, 20);
      var rect3 = new Rectangle<int>(0, 0, 10, 20);
      var rect4 = new Rectangle<int>(0, 5, 10, 20);

      expect(count, 0);
      expect(func(null, null, null), 1);
      expect(func(rect1, rect2, rect3), 2);
      expect(func(rect3, rect1, rect2), 2);
      expect(func(rect4, rect1, rect2), 3);
      expect(func(rect4, rect4, rect2), 4);
      expect(func(rect4, rect4, rect4), 5);
      expect(func(rect4, rect4, rect4), 5);
    });
  });

  group('imemo3', () {
    test('should cache result for 3 arguments', () {
      var count = 0;
      var func = imemo3((int a, int b, int c) => ++count);

      expect(count, 0);
      expect(func(null, null, null), 1);
      expect(func(null, null, null), 1);
      expect(func(null, null, 2), 2);
      expect(func(1, null, 3), 3);
      expect(func(3, 2, 1), 4);
      expect(func(3, 2, 1), 4);
    });

    test('should return result for 3 arguments', () {
      var func = imemo3((int a, int b, int c) => a + b + c);

      expect(func(1, 1, 1), 3);
      expect(func(1, 1, 1), 3);
      expect(func(1, 1, 3), 5);
      expect(func(1, 2, 1), 4);
      expect(func(3, 1, 2), 6);
    });

    test('should check arguments by reference', () {
      var count = 0;
      var func = imemo3((Rectangle<int> a, Rectangle<int> b, Rectangle<int> c) => ++count);

      var rect1 = new Rectangle<int>(0, 0, 10, 20);
      var rect2 = new Rectangle<int>(0, 0, 10, 20);
      var rect3 = new Rectangle<int>(0, 0, 10, 20);
      var rect4 = new Rectangle<int>(0, 5, 10, 20);

      expect(count, 0);
      expect(func(null, null, null), 1);
      expect(func(rect1, rect2, rect3), 2);
      expect(func(rect3, rect1, rect2), 3);
      expect(func(rect4, rect1, rect2), 4);
      expect(func(rect4, rect4, rect2), 5);
      expect(func(rect4, rect4, rect4), 6);
      expect(func(rect4, rect4, rect4), 6);
    });
  });

  group('memo4', () {
    test('should cache result for 4 arguments', () {
      var count = 0;
      var func = memo4((int a, int b, int c, int d) => ++count);

      expect(count, 0);
      expect(func(null, null, null, null), 1);
      expect(func(null, null, null, null), 1);
      expect(func(null, null, null, 4), 2);
      expect(func(null, null, 3, 4), 3);
      expect(func(null, 2, 3, 4), 4);
      expect(func(1, 2, 3, 4), 5);
      expect(func(1, 2, 3, 4), 5);
    });

    test('should return result for 4 arguments', () {
      var func = memo4((int a, int b, int c, int d) => a + b + c + d);

      expect(func(1, 1, 1, 1), 4);
      expect(func(1, 1, 1, 4), 7);
      expect(func(1, 1, 3, 4), 9);
      expect(func(1, 2, 3, 4), 10);
      expect(func(0, 2, 3, 4), 9);
    });

    test('should check arguments by value', () {
      var count = 0;
      var func = memo4((Rectangle<int> a, Rectangle<int> b, Rectangle<int> c, Rectangle<int> d) => ++count);

      var rect1 = new Rectangle<int>(0, 0, 10, 20);
      var rect2 = new Rectangle<int>(0, 0, 10, 20);
      var rect3 = new Rectangle<int>(0, 0, 10, 20);
      var rect4 = new Rectangle<int>(0, 0, 10, 20);
      var rect5 = new Rectangle<int>(0, 5, 10, 20);

      expect(count, 0);
      expect(func(rect1, rect2, rect3, rect4), 1);
      expect(func(rect1, rect2, rect3, rect4), 1);
      expect(func(rect2, rect2, rect3, rect4), 1);
      expect(func(rect1, rect3, rect3, rect4), 1);
      expect(func(rect1, rect2, rect4, rect4), 1);
      expect(func(rect1, rect2, rect3, rect1), 1);
      expect(func(rect1, rect2, rect3, rect4), 1);
      expect(func(rect1, rect2, rect3, rect5), 2);
      expect(func(rect1, rect2, rect3, rect5), 2);
    });
  });

  group('imemo4', () {
    test('should cache result for 4 arguments', () {
      var count = 0;
      var func = imemo4((int a, int b, int c, int d) => ++count);

      expect(count, 0);
      expect(func(null, null, null, null), 1);
      expect(func(null, null, null, null), 1);
      expect(func(null, null, null, 4), 2);
      expect(func(null, null, 3, 4), 3);
      expect(func(null, 2, 3, 4), 4);
      expect(func(1, 2, 3, 4), 5);
      expect(func(1, 2, 3, 4), 5);
    });

    test('should return result for 4 arguments', () {
      var func = imemo4((int a, int b, int c, int d) => a + b + c + d);

      expect(func(1, 1, 1, 1), 4);
      expect(func(1, 1, 1, 4), 7);
      expect(func(1, 1, 3, 4), 9);
      expect(func(1, 2, 3, 4), 10);
      expect(func(0, 2, 3, 4), 9);
    });

    test('should check arguments by reference', () {
      var count = 0;
      var func = imemo4((Rectangle<int> a, Rectangle<int> b, Rectangle<int> c, Rectangle<int> d) => ++count);

      var rect1 = new Rectangle<int>(0, 0, 10, 20);
      var rect2 = new Rectangle<int>(0, 0, 10, 20);
      var rect3 = new Rectangle<int>(0, 0, 10, 20);
      var rect4 = new Rectangle<int>(0, 0, 10, 20);
      var rect5 = new Rectangle<int>(0, 5, 10, 20);

      expect(count, 0);
      expect(func(rect1, rect2, rect3, rect4), 1);
      expect(func(rect1, rect2, rect3, rect4), 1);
      expect(func(rect2, rect2, rect3, rect4), 2);
      expect(func(rect1, rect3, rect3, rect4), 3);
      expect(func(rect1, rect2, rect4, rect4), 4);
      expect(func(rect1, rect2, rect3, rect1), 5);
      expect(func(rect1, rect2, rect3, rect4), 6);
      expect(func(rect1, rect2, rect3, rect5), 7);
      expect(func(rect1, rect2, rect3, rect5), 7);
    });
  });
}
