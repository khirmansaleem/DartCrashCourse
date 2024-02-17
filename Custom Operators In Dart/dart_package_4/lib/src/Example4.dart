// ========================== SUBSTRACTING A STRING FROM ANOTHER STRING =============================

void main() {
  var a = 'foobarbar' - 'foo';
  print(a);
}

// substract one string from other stirng
// 'foo foo foo bar' -'foo' = bar
// it removes all the instances of the bar from the string 'foo bar'
// wherever it caught foo in the first string, it will remove it using custom operator '-'
// and with help of extension this will be implemented

extension MinusStrings on String {
  String operator -(String other) => replaceAll(other, '');
}
