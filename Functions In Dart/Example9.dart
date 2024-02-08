// OPTIONALITY OF REQUIRED NAMED PARAMETERS
// named parameters have more clarity and readability when calling the function than in case of
//positional parameters
void main(List<String> args) {
// named required parameters can also be optional but they cannot have default values
// once we use the keyword required with them, they cannot have default values
// because it required a value at function call so no one can just call it without passing values to the
// function
  passName(name: 'MAMMAMMMA');
}

void passName({required String? name}) {
  print(name);
}
