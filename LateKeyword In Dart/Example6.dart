// AVOIDING A COMMON PITFALL WITH LATE VARIABLES
//---------------------------------------------------------------------------------------

void main(List<String> args) {
// A normal late variable that depends on Late Final Variable
  Person person = Person();
  person.firstName = 'Khirman';
  person.lastName = 'Saleem';
  print(person.fullName);
}

// inside a class only late variables can depend on other late final variables because they have a contract
// that for sure they will have a value and they actually don't need constructor for assigning that value to
// another late variable.
// they will be lazily resolved, that will happen without needing to have a constructor,

// for checking whether the late variables contain value or not, you can use optionals instead of try catch
// block for that, because try catch block usage for late variables is against the guidelines.
// because it is a contract and you should not worry whether contract fulfilled or not
// before using that variable.
class Person {
  // dependency of late variable on 2 late final variables
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
}
