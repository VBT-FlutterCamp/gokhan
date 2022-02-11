import 'dart:io';

import 'operations.dart';

void main() {
  String operation = "";
  double number1 = 0;
  double number2 = 0;
  while (true) {
    print("Welcome to the Calculator");
    print("Please type in the first number:");
    try {
      number1 = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Please type in a valid number");
      continue;
    }
    print(
        "Please type in the operation you want to perform:(+,-,*,/,sqrt,mod,pow,fac)");
    print("do you want to quit?(q)");
    operation = stdin.readLineSync()!;
    if (operation == "q") {
      print("by by");
      break;
    } else if (operation == "+" ||
        operation == "-" ||
        operation == "*" ||
        operation == "/" ||
        operation == "mod") {
      print("Please type in the second number:");
      try {
        number2 = double.parse(stdin.readLineSync()!);
      } catch (e) {
        print("Please type in a valid number");
        continue;
      }
      switchCase(number1: number1, number2: number2, operation: operation);
    } else {
      switchCase(number1: number1, operation: operation);
    }
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
    case "pow":
      print("The result is: ${operations.pow()}");
      break;
    case "fac":
      print("The result is: ${operations.fac()}");
      break;
    default:
      print("Invalid operation");
  }
}
