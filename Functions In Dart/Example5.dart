// NAMED PARAMETERS
// named parameters always have a value so when calling them it is not necessary to pass value
// they either will be optional variables or always have some value in them
// these type of parameters are always enclosed in curly braces

// NAMED PARAMETERSS ARE EITHER TO BE OPTIONAL OR HAVE SOME DEFAULT VALUE
void main(List<String> args) {
  displayName(
      name:
          'khirman'); // we can also explicitly pass name which will override the default value set

  diplayNameOptional(); // this will print null
}

void displayName({String name = 'boo'}) {
  print('here is the name $name');
}

// or we can also pass optional variable as parameter
// because optional have by default value set to null
void diplayNameOptional({String? name}) {
  print(name);
}
