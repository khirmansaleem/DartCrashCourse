void main(List<String> args) {
  // MULTIPLE ASSIGNMENTS OF LATE VARIABLES
  //======================================================================================
// late variables allow the multiple assignments unless they are late finals
// late final variables
// in case of late final once you have assigned a value to late variable you cannot re assign value to
// this variable again.
//-------------------------------------------------------------------------
  Person person = Person();
  person.description = 'this is a person';
  print(person.description);
  Dog dog = Dog();
  dog.description = 'this is a dog';
  print(dog.description);

  try {
    // once we have declared as late final , then we cannot re assign it
    // catch block will capture the error.s
    person.description = 'new dog';
  } catch (e) {
    print(e);
  }
}

class Person {
  late final String description;
}

class Dog {
  late String description;
}
