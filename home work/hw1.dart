import "dart:io";

void main() {

  print("Enter a number:");
  var input = double.parse(stdin.readLineSync()!);

  if (input > 0) {
    print("The number is positive.");
  } else if (input < 0) {
    print("The number is negative.");
  } else {
    print("The number is zero.");
  }

}
