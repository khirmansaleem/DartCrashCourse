// ======================================== SIMPLE MIXINS ============================================

// MIXINS ARE SEPERATE ENTITIES THAT CAN BRING FUNCTIONALITIES TO EXISTING CLASSES
// they can be used to reuse across different class hierarcies
// AND ENUMERATIONS.
// they can be created in the top level of application or inside classes or enumeration
// they can contain functions , funationality, variables or properties
// dart does not support multiple inheritance --> a-> b->c
// Multiple Inheritance : child class inheriting from one or more parent classes.
// Inherit behaviours and methods from multiple mixins without inheriting from multiple classes.
void main() {
// by creating instance of class, we can call the methods, propertiies of the mixins
  final person1 = Person();
  person1.speed = 30;
  person1.running(50);
  print(person1.speed);
  person1.walking(20);
}

mixin Speed {
  abstract double speed;
}
// creating mixin on top of Speed 'mixin'
mixin WalkingSpeed on Speed {
  void walking(double speed) {
    print("Person is walking at the speed of $speed");
    this.speed = speed;
  }
}
// creating mixin on top of Speed 'mixin'
mixin RunningSpeed on Speed {
  void running(double speed) {
    print("Person is walking at the speed of $speed");
    this.speed = speed;
  }
}

// here class Person can access the methods and abstract property of the mixin
class Person with Speed, WalkingSpeed, RunningSpeed {
  @override
  double speed;
  Person() : speed = 0.0;
}
