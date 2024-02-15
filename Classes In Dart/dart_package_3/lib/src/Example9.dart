// ========================INHERITING CONSTRUCTORS===================================

void main() {
  final mom1 = Mom();
  print(mom1);
}
// INHERIT CONSTRUCTORS AND HAVE YOUR OWN VERSION OF THOSE CONSTRUCTORS

enum Roles {
  mom,
  dad,
  sister,
  brother,
  grandmother;
}

class Person {
  final Roles role;
  const Person(this.role);
  @override
  String toString() {
    return ' the role of person is : ${role.name}';
  }
}

class Mom extends Person {
  Mom()
      : super(Roles
            .mom); // constructor from the parent person is inherited in the mom class,
  // so it can access the role instance variable defined in the parent constructor
}
