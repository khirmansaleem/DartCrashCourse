// ============================MIXINS WITH HASHCODE IMPLEMENTATION=====================================

void main() {
  final sportman = <SportManDetails>{
    SportManDetails(20, 30000),
    SportManDetails(20, 30000),
    SportManDetails(30, 40000)
  };
  print(sportman);
}
// mixin that bring hash code to who ever implemented

enum SportsManType {
  cricketer,
  tennisplayer,
  footballer;
}

mixin SportsMan {
  int get age;
  int get salary;
  SportsManType get type;

  @override
  String toString() => 'age : $age, salary : $salary , type: ${type.name}';

  // implement hashcode property within the mixin

  @override
  int get hashCode => Object.hash(age, salary);
  @override
  bool operator ==(Object other) => other.hashCode == hashCode;
}

class SportManDetails with SportsMan {
  @override
  final int age;

  @override
  final int salary;

  @override
  final SportsManType type;

  SportManDetails(this.age, this.salary) : type = SportsManType.cricketer;
}
