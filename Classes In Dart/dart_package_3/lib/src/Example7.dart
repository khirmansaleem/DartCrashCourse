// ============================== STATIC PROPERTIES AND STATIC METHODS ======================================

void main() {
  /*final foo = Person();
  final baz = Person();
  foo.name = 'khirman';
  print(foo.name);
  baz.name = 'adnan';
  print(baz.name);
  */
  Person.name = 'khirman';
  Person.name = 'nimra';
  print(Person.name);
  print("=============================");
  final car1 = Car();
  final car2 = Car();
  final car3 = Car();
  final car4 = Car();
  final car5 = Car();
  print(Car.carInstances());
}

// when we are creating instances of person class means we are creating 2 copries of the blueprint
// then changes made to those copies do not affect the original class
// values assigned to instance variables of the class by creating instances of class do not affect the class
// itself.

// properties and methods belong to the class directly not the instance of class.
// do not need to create instance of class
// in this case changes made to name variable will affect all the copies of that class.
class Person {
  static String name = '';
}
// creates a class car and whenever someone creates an instance of it, keep that in mind and increment counter.
// it will keep track of how many times it's copies has been created.
// we can make a static variable that count the number of instances created,
// it will be static itself, whenever new instance of class created, this variable will belong to class
// not that instance.

class Car {
  static int _calculateInstances = 0;
  // using getter we can access the value from outside the class
  static int get carsInstances => _calculateInstances;
  static int carInstances() => _calculateInstances++;
  Car() {
    carInstances();
    // print(_calculateInstances);
  }
}
