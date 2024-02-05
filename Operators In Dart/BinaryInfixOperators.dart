void main(List<String> args) {
  var age = 50;
  print(age + 20);
  print(3 % 2); // remainder of two number is find by mod operator "%"
  print(age == 30); //  compare values on both side and return boolean
  print(3 ~/ 2); // truncating division
  print(age &
      20); // bitwise and operation will be result, if use "|", bitwise or operation
  print(age ^
      20); // as long as values on both sides bits are same result is 0 otherwise result is 1
  print(age << 20); // age shifted to left 20 times-- bitwise left shift
  print(age >> 20); // age shifted to the right 20 times--bitwise right shift
}
