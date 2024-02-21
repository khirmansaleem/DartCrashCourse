// ==========================  CAPTURING STACK TRACE ============================
void main() {
  final person = Person(91);
  person.age = -1;
  try {
    person.getAge();
  } catch (e, stackTrace) {
    print(e);
    print(stackTrace);
  } finally {
    print(person);
  }
}
// NOT TO DO CODE
// YOU SHOULD NOT CATCH ERRORS :: THIS IS JUST FOR DEMO PURPOSE .

class Person {
  int age;
  Person(this.age);
  @override
  String toString() => 'age :$age';

  void getAge() {
    if (age < 0) {
      throw ArgumentError('Age cannot be less than 0');
    }
  }
}
