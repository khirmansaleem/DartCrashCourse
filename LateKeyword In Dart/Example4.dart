void main(List<String> args) {
// late modifier means verify me at runtime
  // DEPENDENCY OF LATE VARIABLES ON EACH OTHER
  //---------------------------------------------------------
  // Late Variable Dependency.
  // late variables work in a chain form
  // Late variables are chained with each other-->
  Person person = Person();
  // late variables are chained with each so that only on the first call of the variable

  print(person
      .fullName); // the function is called only the first time when it need to be resolved other times
  // it just gives the value that was resolved in the first call. it will execute function each time
  // only  first time, call function and get the resolved value and use the value later on.
  print(person.fullName);
  // We can also get the last name and first name out of that late variable
  print(person.firstName);
  print(person.lastName);
}

class Person {
  // we can see the dependency by creating other 2 late variables with first name and lastnames
  // using this full name

  late String fullName = getfullname();
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  String getfullname() {
    print("Get Full name function is called");
    return 'Khirman Saleem';
  }
}
