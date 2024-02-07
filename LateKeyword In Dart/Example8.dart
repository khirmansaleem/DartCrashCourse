// ASSIGNING LATE VARIABLES TO NON LATE VARIABLES
void main(List<String> args) {
// Assigning the late variable to a non late variable resolves the late variable immediately.
// when a non-late variable is assigned to a late variable then according to late variable
// point of view it is being used so it will be resolved immediately and value will be
// printed immediately
  late String name = getFullName();
  final String fName =
      name; // using the late variable here , so it will be resolved here
  print(fName);
}

String getFullName() {
  return 'khirman saleem';
}
