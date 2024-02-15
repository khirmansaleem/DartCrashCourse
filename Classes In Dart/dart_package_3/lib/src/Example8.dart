// ====================================== FACTORY CONSTRUCTORS =====================================================

void main() {
  final car = Vehicle.car();
  print(car);
  final van = Vehicle.van();
  print(van);
  final vehicle = Vehicle.vehicle();
  print(vehicle);
}
// Factory constructors can create instances of their subclasses
// a normal constructor can only create instance of itself, while a factory constructor can create instance of
// subclasses
// factory constructor either creates the constructor of it's current class or the constructor of
// it's subclasses

class Vehicle {
  const Vehicle();
  factory Vehicle.car() => Car();
  factory Vehicle.van() => Van();
  factory Vehicle.vehicle() => Vehicle();

  @override
  String toString() {
    return ' Instance of $runtimeType is called';
  }
}

class Car extends Vehicle {}

class Van extends Vehicle {}
