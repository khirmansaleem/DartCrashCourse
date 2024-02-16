// ===========================> MIXINS WITH LOGIC <=================================
void main() {
  final monkey = Monkey(20);
  print(monkey.age);
  print(monkey.incrementAge(20));
}
// ===========MIXINS CAN HAVE SIMPLE FUNCTIONS ===============
// IN SETTER WRITE A PROPERTY AND IN GETTER, READ THAT PROPERTY.

mixin IncrementAge {
  abstract int age;
  int incrementAge(int age) => ++age;
}

class Monkey with IncrementAge {
  @override
  int age;
  Monkey(this.age);
}
