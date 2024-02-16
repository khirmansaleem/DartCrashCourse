// ============================= MIXINS WITH EQUALITY IMPLEMENTATION====================================
void main() {
  final person1 = Person(1, "khriam", 23);
  final person2 = Person(1, "good", 45);
  // because we have implemented equality based on id
  if (person1 == person2) {
    print("they have same id's");
  }
}

mixin HasIdentifier {
  int get id;
// identical means whether both refer to same object in memory => if 2 are the same instances
// implementing equality based on the id
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with HasIdentifier {
  final int age;
  final String name;

  @override
  final int id;
  Person(this.id, this.name, this.age);

  @override
  String toString() => 'id : $id, name: $name, age: $age ';
}
