// ============================= ENCAPSULATION WITH UNMODIFIABLE COLLECTION ================================
// this introduces encapsulation in the list given siblings
// no more siblings can be added to the defined list
import 'dart:collection';

void main() {
  Person person1 = Person('Khirman', [Person('Bar', null)]);
  try {
    person1._siblings.add(Person('good', null));
  } catch (e) {
    print(e);
  }
}

class Person {
  final String name;
  final UnmodifiableListView<Person> _siblings;

  Person(
    this.name, [
    List<Person>? siblings,
  ]) : _siblings = UnmodifiableListView(siblings ?? []);

  UnmodifiableListView<Person> get siblings => _siblings;
}
