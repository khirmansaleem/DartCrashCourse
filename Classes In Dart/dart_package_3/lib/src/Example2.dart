// ====================================CONSTRUCTORS ==================================================
// there are also named constructors with the initializer list
// Another constructor can be that optionally takes the name and optionally takes the age
// if the name or age is provided then it will create that instance otherwise set the default name and age
// CONSTRUCTORS FOR DIFFERENT MEANINGS OF YOUR CLASSES
//=========================================================================================================
void main() {
  const person1 = Person(name: "khirman", age: 23);
  person1.displayPerson();
  // for calling the second type of constructor
  final person2 = Person.foo("khirman");
  person2.displayPerson();
  final person3 = Person.bar('adnan', 24);
  person3.displayPerson();
  final person4 = Person.baz();
  person4.displayPerson();
  final person5 = Person.zab(null, null);
  person5.displayPerson();
}

class Person {
  final String name;
  final int age;
  const Person({required this.name, required this.age});
  // we can create more named constructors that can provide initiializer list
  Person.foo(this.name) : age = 20;
  // different types of named constructors are possible
  Person.bar(String nam, int ag)
      : name = nam,
        age = ag;

  Person.baz()
      : name = "rahma",
        age = 18;

// another constructor that optionally takes name and age
// if name or age not provided , it will set them to default values
// if has not passed any value for name or age then set them to some default values stated here
  Person.zab(String? name, int? age)
      : name = name ?? 'baz',
        age = age ?? 20;

  void displayPerson() {
    print("Name :: $name , Age :: $age");
  }
}
