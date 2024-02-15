//=================================== CLASSES IN DART ======================================================

// classes are basically blueprints of logic or information.
// you basically create this logic in one place and can reuse that logic in different places.
// the main logic is the class and the copy of logic that you handsout to other places
// are the instances of that class.
// one class that does something and have many instances of that class
// by creating instance of the class, you can access the logic of class from outside that class,

// object is the instance of the class that hold properties (data ) and methods (functionality)
void main() {
  final person1 = Person(name: 'khirman', age: 23, education: "BSC");
  final person2 = Person(name: "adnan", age: 23, education: "BSC");
  person1.displayPerson();
  person2.displayPerson();
}
// every class will need to have a constructor where it's properties lies.
// constructor is a special function whose job is to create instance of the class
// this refer to the current object of the class.

class Person {
  final String name;
  final String education;
  final int age;
  Person({required this.name, required this.age, required this.education});

  void displayPerson() {
    print("Name :: $name , Age :: $education , Education :: $education ");
  }
}
