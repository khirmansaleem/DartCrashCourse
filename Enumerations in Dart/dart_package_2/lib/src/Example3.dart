// ==================================== SWITCH ENUMERATIONS ========================================

void main() {
  // switch can have default cases
  // default actually covers all the remaining cases , including those which you have not written yet.
  final whisker = AnimalType.dog;
  switch (whisker) {
    case AnimalType.dog:
      print("this is a dog");
    default:
      print("this handles all the cases other than dog");
  }
}

enum AnimalType {
  dog,
  monkey,
  cat,
  tiger,
  panda,
  lion,
  goat;
}
