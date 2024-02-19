// ======================> EXTENSION OVERRIDES IN DART <======================================
// why extension names are needed
// extension names are needed when two extensions with same function name work on same class
void main() {
  final person1 = Person('khirman', 23);
  print(ShortDescription(person1).description);
  print(LongDescription(person1).description);
}

class Person {
  final String name;
  final int age;
  Person(this.name, this.age);
  @override
  String toString() => 'Name :: $name and Age :: $age';
}

extension ShortDescription on Person {
  get description => '$name is name and $age is the age of that person';
}

extension LongDescription on Person {
  get description =>
      'sa;jldsa gdsa;kj sa;jgoewlksa g;ks gdsalkjgsa gas; gas;lg sa;lkgjas gas;glksd gsa;lgnsa';
}
