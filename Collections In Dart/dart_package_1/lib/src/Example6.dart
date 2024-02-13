// ======================  MAPPING LISTS TO ITERABLES ==============================================

void main() {
  const namesList = ['foo', 'bar', 'goo'];
  // dart is smart so it itself store the result of list mapping in a iterable
  // to consume less memory
  var capitalNames = namesList.map((name) => name.toUpperCase());
  print(capitalNames);
}
