import 'dart:io';

import 'operations.dart';

void main() {
  print("Welcome to the Calculator");
  print("Please type in the first number:");
  final double number1 = double.parse(stdin.readLineSync()!);
  print(
      "Please type in the operation you want to perform:(+,-,*,/,sqrt,mod,fac,fac)");
  final String operation = stdin.readLineSync()!;
  if (operation == "+" ||
      operation == "-" ||
      operation == "*" ||
      operation == "/" ||
      operation == "mod") {
    print("Please type in the second number:");
    final double number2 = double.parse(stdin.readLineSync()!);
    switchCase(number1: number1, number2: number2, operation: operation);
  } else {
    switchCase(number1: number1, operation: operation);
  }
}

void switchCase(
    {required double number1, double? number2, required String operation}) {
  Operations operations = Operations(number1: number1, number2: number2);
  switch (operation) {
    case "+":
      print("The result is: ${operations.add()}");
      break;
    case "-":
      print("The result is: ${operations.sub()}");
      break;
    case "*":
      print("The result is: ${operations.mul()}");
      break;
    case "/":
      print("The result is: ${operations.div()}");
      break;
    case "sqrt":
      print("The result is: ${operations.sqrt()}");
      break;
    case "mod":
      print("The result is: ${operations.mod()}");
      break;
    case "fac":
      print("The result is: ${operations.fac()}");
      break;
    default:
      print("Invalid operation");
  }
}
