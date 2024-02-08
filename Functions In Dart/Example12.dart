// OPTIONAL POSITIONAL PARAMETERS
// in these parameters position of values passed matters
// but parameters can be set to default values using [] braces.

void main(List<String> args) {
  displayName('khirman', null);
  displayName();
}

void displayName([String name = 'khirman', String? profession]) {
  print('Name is $name and Profession is $profession');
}
