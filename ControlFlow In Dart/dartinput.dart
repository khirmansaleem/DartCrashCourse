import 'dart:io';

void main() {
  // print('Enter your name:');

  // Reads a line from the 'stdin' stream.
  String? name = stdin.readLineSync();

  // Prints the input back to the user.
  print('Hello, $name!');
}
