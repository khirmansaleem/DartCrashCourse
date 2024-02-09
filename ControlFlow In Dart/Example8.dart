// SWITCHING OVER STRING VALUES
import 'dart:io';

// you can assign a label to other case in switch and you can switch to that case
// by saying "continue  labelName"
void main() {
  do {
    print("Enter your name");
    String? input = stdin.readLineSync();
    if (input == 'exit') {
      break;
    } else if ((input?.length ?? 0) == 0 || input == null) {
      print("enter a valid value please");
      continue;
    }

    switch (input.toLowerCase()) {
      case 'khirman':
        print(" you are under age");
        break;
      case 'adnan':
        print(" You are still very young");
        break;
      case 'rahma':
        print("You are perfect for it");
        break;

      default:
        print("Other ages are not included yet.");
        break;
    }
  } while (
      true); // this is a infinite loop, you have to include stopping conditions in the body part in do
}
