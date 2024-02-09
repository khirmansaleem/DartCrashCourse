// SWITCHING OVER INTEGER VALUES
import 'dart:io';

// take age as input from the user validate it that whether it is null or proper value
// and then pass this age to the switch statements that will categorize valid age to different cases
// you also need to do this in do while loop , we want iterations
void main() {
  do {
    print("Enter your age");
    String? input = stdin.readLineSync();
    if (input == 'exit') {
      break;
    } else if ((input?.length ?? 0) == 0 || input == null) {
      print("enter a valid value please");
      continue;
    }

    int? age = int.tryParse(input);
    if (age == null) {
      print('enter a valid age please');
      continue;
    }

    switch (age) {
      case 10:
        print(" you are under age");
        break;
      case 20:
        print(" You are still very young");
        break;
      case 30:
        print("You are perfect for it");
        break;

      default:
        print("Other ages are not included yet.");
        break;
    }
  } while (
      true); // this is a infinite loop, you have to include stopping conditions in the body part in do
}
