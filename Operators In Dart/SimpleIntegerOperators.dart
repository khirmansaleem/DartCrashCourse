void main(List<String> args) {
  var num1 = 10;
  var num2 = 20;
  var num3 = 30;
  var ans = num1 ~/
      num2; // when using truncating division, answer will be always integer.
  print(num1 + num2 + num3);
  print(num1 - num2 - num3);
  print(num1 * num2 * num3);
  print(ans);
}
