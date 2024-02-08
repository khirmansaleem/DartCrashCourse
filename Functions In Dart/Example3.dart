// DYNAMIC RETURN TYPES
void main(List<String> args) {
// functions that return no value by default they return null
// Every function returns null if you dont have return value explicitly
  print(doNothing());
}

// not return any datatype, dart takes it as the dynamic datatype.
// if we specify to void then when we call the function it wont be able to consume that null value
dynamic doNothing() {}
