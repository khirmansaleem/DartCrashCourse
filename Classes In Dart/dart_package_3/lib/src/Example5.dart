// ================================= METHODS IN DART ==============================================

void main() {
  final car1 = Car(30);
  car1.carRun();
  final car2 = Car(0);
  car2.carStopped();
}
// what methods are and how to use inside classes
// final properties of the class can only be read and cannot be re assign to new value.
// methods are the functions that belong to instance of that class.
// these are the functions that are implemented at that class level
// they only can be accessed by creating instance of that class.
// you need to create copy of that class , which will be instance of that class in order to access it's
// methods.

class Car {
  final int speed;
  Car(this.speed);

  void carRun() {
    print("Car is accelerating at the speed of $speed km/hr");
  }

  void carStopped() {
    print("Car is stopped and speed is $speed km/hr");
  }
}
