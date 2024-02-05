void main(List<String> args) {
// they first assign value to the variable and then modify it
// so in this case the value of original variable will remain same.
  var a = 90;
  print(
      a--); // first assign a to 90, display it and then decrement to get 89 and print it then
  print(a);
}
