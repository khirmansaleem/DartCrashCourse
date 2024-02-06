void main(List<String> args) {
// nullable values in dart are in dart by default null
  int?
      a; // we do not need to necessarily initlize optional variable with some value.
  a ??=
      30; // "??" tells assign value to variable on left side only if it is null otherwise
  print(a);
}
