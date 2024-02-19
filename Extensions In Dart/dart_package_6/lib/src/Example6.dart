// ==============================> Extending Enums <=================================
// pattern matching using regular expression
void main() {
  print(AnimalType.CAT.checkUpperCaseEnums);
}

enum AnimalType { Dog, CAT, EAGLE, COW, GOAT }

extension CheckUpperCaseInEnums on Enum {
  get checkUpperCaseEnums => name.contains(RegExp(r'[A-Z]'));
}
