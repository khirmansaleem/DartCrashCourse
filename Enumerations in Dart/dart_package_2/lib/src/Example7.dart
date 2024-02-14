// ================================= EXTENDING ENUMERATIONS =======================================

void main() {
  final animal1 = AnimalType.cat
    ..run(AnimalType.cat)
    ..jump();
}
// adding functions to enumerations both inside and outside of it.

enum AnimalType {
  rabbit,
  dog,
  cat,
  goat,
  lion;

  void run(AnimalType type) {
    print("${type.name} is running");
  }
}

extension Jump on AnimalType {
  void jump() {
    print('${this.name} is jumping');
  }
}
