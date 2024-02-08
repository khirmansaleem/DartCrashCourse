// ORDERING OF NAMED PARAMETERS
// named parameters can appear in which ever order you want at the call side
// they usually dont follow the order the function defines for them
void main(List<String> args) {
  describePerson();
  describePerson(age: 24, name: 'khirman');
  describePerson(name: 'khirman', age: 24);
}

void describePerson({String? name, int? age}) {
  print("Hello, $name, your age is $age");
}
