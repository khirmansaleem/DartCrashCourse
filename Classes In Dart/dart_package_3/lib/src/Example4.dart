//==============================  GETTERS IN CLASSES ======================================

void main() {
  final person1 = Person("Khirman", "Saleem");
  print(person1);
  //person1.fullName;
  print(person1.fullName);
}

// property in the class can be get only that dont need to be initialized in the constructor
// of that class.
// full name can be calculated when the instance of that class created. -->  created in constructor
// full name can be calculated when that object is called --> getter property
// in case of getter, full name will be calculated everytime you call getter
// if it is a heavy calculation like mapping etc then put it in constructor dont create getter for that

class Person {
  final String firstName;
  final String lastName;

  Person(this.firstName, this.lastName);
  // String fullName;
  String get fullName => "$firstName $lastName";
  // Person(this.firstName, this.lastName) : fullName = "$firstName $lastName";
  @override
  String toString() {
    return fullName;
  }
}
