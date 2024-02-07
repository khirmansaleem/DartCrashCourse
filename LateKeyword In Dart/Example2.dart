// Lazy Initialization to a FUNCTION RESULT.
void main(List<String> args) {
// initialized when they are used
// they resolve the value placed in them only when they are used for the first time.
  print("Before :");
  late String b =
      printAfter(); // this function call will be executed only if we use this variable
  // late variable keep this initialization in mind and wait for it to use the variable
  print("After ");
  print(b); // here this function call will be executed.
}

String printAfter() {
  print("Printing after statement");
  return 'Khirman Saleem';
}
