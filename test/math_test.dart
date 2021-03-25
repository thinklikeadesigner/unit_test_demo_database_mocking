import 'package:database_mocking_tests/math.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("math tests", () {
    test("add numbers", () {
      Math _math = Math();
      _math.addtwonumbers(5, 5);

      expect(_math.addtwonumbers(5, 5), 10);
    });

    test("divide numbers", () {
      Math _math = Math();
      _math.dividetwonumbers(10, 5);

      expect(_math.dividetwonumbers(10, 5), 2);
    });

    test("multiply numbers", () {
      Math _math = Math();
      _math.multiplytwonumbers(10, 5);

      expect(_math.multiplytwonumbers(10, 5), 50);
    });

    test("factorial numbers", () {
      Math _math = Math();
      _math.factorial();

      expect(_math.factorial(), 120);
    });
  });

  test("multiply numbers", () {
    Math _math = Math();
    _math.multiplytwonumbers(10, 5);

    expect(_math.multiplytwonumbers(10, 5), 50);
  });
}
