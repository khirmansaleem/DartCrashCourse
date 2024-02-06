void main(List<String> args) {
// Null aware operators to access the properties of nullable variables.
// "?."
  String? a = null;
  print(a
      ?.length); // access the property only if value if not null otherwise skip property and return null
  // if we use "?? ", this is also null aware
  String? b;
  print(b ?? "foo");
  // Play more with optional Strings.
  String? c;
  String? d;
  // null aware operate first check and evaluate left operand if it is null, if so then evaluate right operator
  // and returns operator in the expression which is not null
  // returns first non null value
  var bla = c ?? d; // the result is "optional string" here
  print(bla);
  var e = c ?? "Khirman"; // here "e " is of type string
  print(e);

  // what if both of them contains values
  print("abd" ?? "abc"); // it will print "abd", the first non null value here
}
