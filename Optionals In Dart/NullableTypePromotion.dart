void main(List<String> args) {
  // promote type to non-nullable by checking it is null or not
  final String? checkVariable = null;
  if (checkVariable == null) {
    print("it is a null variable");
  } else {
    final length = checkVariable.length; // now length is int not optional int
  }
  // because it will come to else block only if it is non null.
}
