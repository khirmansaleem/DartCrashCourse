// DEFAULT VALUE FOR NAMED PARAMETERS
// set default values to named parameters, whether they are optional or not
void main(List<String> args) {
  nameDisplay(); // this will display the default value
  nameDisplay(name: null); // it replace default value with null
  nameDisplay(
      name:
          'khirman'); // it replaces default value with name passed as argument
}

// when we calling the function and passing arguements in that function call.
// those arguements will replace the default value of named parameters defined in the function
// it will replace any valid arguement passed with the default parameter value
void nameDisplay({String? name = 'boo'}) {
  print(name);
}
