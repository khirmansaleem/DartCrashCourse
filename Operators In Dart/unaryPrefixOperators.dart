void main(List<String> args) {
// which one of the unary operators are mutating value of variable and which one are just returning new value
// and not changing the value to new value. flipping the value
  var a = 30;
  // first decrement the value of variable and then assign new value to variable
  print(--a);
  print(a);
  // other type which is binary unary operators that do  not change the value just flip the value
  var b = !true;
  const c = !true; // not changing just flipping true with false
  print(b);
  print(++a);
  // unary bitwise complement prefix operator
  // it will complement all the bits of a particular number in it's binary form
  print(~1);
}
