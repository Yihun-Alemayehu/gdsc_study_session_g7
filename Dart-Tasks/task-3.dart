import 'dart:io';

class ZeroDivisionError implements Exception {
  // @override
  // String toString() {
  //   return 'You tried to divide a number by zero';
  // }
}

class Calculator {
  double addition(double x, double y) {
    return x + y;
  }

  double subtraction(double x, double y) {
    return x - y;
  }

  double division(double x, double y) {
    if (y == 0) {
      throw ZeroDivisionError();
    }
    return x / y;
  }

  double multiplication(double x, double y) {
    return x * y;
  }
}

double operatorChecker(String a, double b, double c) {
  late double result;
  if (a == '-') {
    result = Calculator().subtraction(b, c);
  } else if (a == '+') {
    result = Calculator().addition(b, c);
  } else if (a == '/') {
    result = Calculator().division(b, c);
  } else if (a == '*') {
    result = Calculator().multiplication(b, c);
  } else {
    print('You Entered unsupported operator');
  }

  return result;
}

void main() async {
  //Calculator calculate = Calculator();

  final num1;
  final num2;
  final operator;
  print('Choose the operation(- , + , / , *) :');
  operator = stdin.readLineSync()!;

  print('Enter the First number');
  num1 = double.parse(stdin.readLineSync()!);
  print('Enter the Second number');
  num2 = double.parse(stdin.readLineSync()!);
  try {
    final finalResult = operatorChecker(operator, num1, num2);

    await Future.delayed(
      const Duration(seconds: 5),
      () {
        print(finalResult);
      },
    );
  } catch (e) {
    print(
      'You tried to divide a number by zero',
    );
  }
}
