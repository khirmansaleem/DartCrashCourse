// ================================== SETTERS IN CLASSES ============================================
void main() {
  final car = Car();
  car.carRun(speed: 20);
  try {
    car.carRun(speed: -2);
  } catch (e) {
    print(e);
  }
}
// SETTERS ARE ABILITY TO CONTROL WHEN SOMEONE TRIES TO CHANGES VALUES INSIDE YOUR CLASS.
// When we set the value of a variable in setter then when we used that variable in a method
// that method will take that value of setter, first setter will verify that value then it can be used
// in methods

class Car {
  int _speed = 0;

  int get speed => _speed;

  // here we have set a condition in setter method that speed should be positive
  // this will be reflected in every method using that speed
  set speed(int newSpeed) {
    if (newSpeed < 0) {
      throw Exception("Speed cannot be negative");
    } else {
      _speed = newSpeed;
    }
  }

  void carRun({required int speed}) {
    this.speed = speed; // here you can see speed is taken from setter method
    print("Car is accelerating at the speed of $speed km/hr");
  }

  void carStopped() {
    int speed = 0;
    print("Car is stopped and speed is $speed km/hr");
  }
}
