//================================ CONVERTING STRINGS TO ENUMERATIONS ==========================================
// YOU CAN CREATE INSTANCES OF ENUMS FROM STRINGS
// THIS CAN HELP IN JSON PARSING
// YOU GET STRINGS FEOM JSON
// HOW TO INSTANTIATE ENUMS FROM STRINGS IN DART
// converting string values from json into Dart's enum type, making better safety
// and making code more readable and maintanable
// TAKE A STRING VALUE AND CONVERT IT INTO CORRESPONDING ENUM VALUE
//======================================================================================================
void main() {
  print(AnimalType
      .values); // this will print the list of all the cases from the given enum

  print(AnimalType.cat.name); // we will get cat printed to console
  print(convertToEnum(stringValue: 'cat')); // this will return enum value
  print("===============================");
  switchingOperationsOnEnums(convertToEnum(stringValue: 'cat'));
}

// create a fuction that will convert String to it's enum value

AnimalType? convertToEnum({required String stringValue}) {
  try {
    return AnimalType.values.firstWhere((element) =>
        element.name ==
        stringValue); // return the enum type of the value when the
    // string matches with the internal value of that enum object using .name
  } catch (e) {
    return null;
  }
}

enum AnimalType { dog, cat, goat, sheep }

void switchingOperationsOnEnums(AnimalType? type) {
  switch (type) {
    case null:
      print("this is null value");
    case AnimalType.dog:
      print("this is ${type.name}");
    case AnimalType.cat:
      print("this is ${type.name}");
    case AnimalType.goat:
      print("this is ${type.name}");
    case AnimalType.sheep:
      print("this is ${type.name}");
  }
}
