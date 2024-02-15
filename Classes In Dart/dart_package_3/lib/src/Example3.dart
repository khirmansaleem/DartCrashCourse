// ======================================== SUBCLASSING ========================================
// inherting logic from one class to the other class
// subclasses inherit the properties and functionalities of the main class.
// every class in dart is implicitly the subclass of object
// override the toString() of class 'object' simply means that you are to re implement this method in subclass
// $runtimeType --> gives you the type of your class
// child class constructor will by default call the constructor of parent class under the hood,
// so you have to include values of parent class constructor also
// if you create the instance of child class than it will pass the paramter value of parent class also
// which in turn will be passed to the parent class contructor.
// in child constructor either pass the value by super(value) or just pass parameter
//
//============================================================================================================
void main() {
  final vehicle = Vehicle(3);
  print(vehicle);
  final car = Car();
  print(car);
  final motorCycle = Motorcycle();
  print(motorCycle);
}

class Vehicle {
  final int wheelCount;
  Vehicle(this.wheelCount);

  @override
  String toString() {
    if (runtimeType == Vehicle) {
      return ' It is a $runtimeType and the wheel count is : $wheelCount ';
    } else {
      return super.toString();
    }
  }
}

class Car extends Vehicle {
  Car() : super(4); // every call will have 4 wheels
}

class Motorcycle extends Vehicle {
  Motorcycle() : super(2);
}
