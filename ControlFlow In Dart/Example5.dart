// SWITCH STATEMENTS

void main() {
  describeDatatype('Value');
  describeDatatype(1);
  describeDatatype(2.2);
}
// switch statements should be inclusive of all possible cases
// it should handle all possible cases related to problem for which it is used
// if you have not cover all the cases then there should be a default case

void describeDatatype<T>(T value) {
  // this function takes generic data type as a parameter

  switch (T) {
    case int:
      print("this is an integer");

    case double:
      print("this is a double");

    case String:
      print("this is a string");

    case bool:
      print("this is a boolean");

    default:
      print("this is something else datatype");
  }
}
