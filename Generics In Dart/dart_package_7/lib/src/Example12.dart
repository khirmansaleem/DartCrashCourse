// ==============================> GENERIC CLASS PROPERTIES <==================================================

void main() {
  final person = Person(33.4);
  print(person);
  print(person.age);
}

// creating simple class with generic property of age

class Person<T extends num> {
  final T age;
  Person(this.age);
  @override
  String toString() => 'The age of the person is :: $age ';
}
