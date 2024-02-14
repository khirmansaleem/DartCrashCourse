//==================================== ENHANCED ENUMERATIONS ==============================================
void main() {
  // THERE ARE PROPERTIES ON ENUMS IN ENHANCED ENUMS
  final person = Person('khirman', Car.car);

  switch (person.car) {
    case Car.car:
      print(
          " CAR :: tires: ${person.car.tires} Passangers: ${person.car.passengers}");

    case Car.bus:
    case Car.bicycle:
      print(
          " CAR :: tires: ${person.car.tires} Passangers: ${person.car.passengers}");
  }
}
// enum is a special type of class
// some properties of the enum car are defined here

class Person {
  final String name;
  final Car car;
  Person(this.name, this.car);
}

enum Car {
  // these are cases with values of those properties
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Car({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  @override
  String toString() {
    return '$tires  $passengers $carbonPerKilometer';
  }
}
