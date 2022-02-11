import 'dart:math' as math;

class Operations {
  final double number1;
  final double? number2;

  Operations({required this.number1, this.number2});

  double add() {
    return number1 + number2!;
  }

  double sub() {
    return number1 - number2!;
  }

  double mul() {
    return number1 * number2!;
  }

  double div() {
    return number1 / number2!;
  }

  double mod() {
    return number1 % number2!;
  }

  double sqrt() {
    return math.sqrt(number1);
  }

  double fac() {
    double result = 1;
    for (double i = 1; i <= number1; i++) {
      result = result * i;
    }
    return result;
  }
}
