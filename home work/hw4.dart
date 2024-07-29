import 'dart:io';

void main() {
  print("Welcome to the Simple Calculator!");
  print("Choose an operation:");
  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");


  final choice = int.parse(stdin.readLineSync()!);

  if (choice < 1 || choice > 4) {
    print("Invalid choice. Please select a valid operation (1-4).");
    return;
  }

  
  print("Enter the first number:");
  final num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  final num2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (choice) {
    case 1:
      result = num1 + num2;
      print("Result: $result");
      break;
    case 2:
      result = num1 - num2;
      print("Result: $result");
      break;
    case 3:
      result = num1 * num2;
      print("Result: $result");
      break;
    case 4:
      if (num2 != 0) {
        result = num1 / num2;
        print("Result: $result");
      } else {
        print("Error: Cannot divide by zero.");
      }
      break;
    default:
      print("Invalid choice. Please select a valid operation (1-4).");
  }
}
