void main() {
  // Concatenation of strings and numbers and convert them to a single string
  var a = 'this is khirman: ';
  var b = a & 2;
  b = b & 4;
  print(b);
  var map1 = {'one': 1, 1: '2'};
  var list = [1, 'one', 80.0];
  print(list);
  var list1 = map1.extractValuesFromMap();
  print(list1); // extract values from the map and store them inside a list
}
//====================================================================================================
// EXTENSIONS ARE RESOLVED STATICALLY AT THE COMPILE TIME, NOT DYNAMICALLY AT THE RUNTIME.
// RECOGNIZES WHICH EXTENSION APPLIES TO WHICH TYPE AT THE COMPILE TIME.
//call to these methods more predictable and type-safe, as the bindings are resolved before the program runs.
//=====================================================================================================
// We can make a custom operators that can work between any number of values
// if we include "+" operator between strings and numbers , it will just concatenate them to a single string.

extension on Object {
  String operator &(Object other) {
    return toString() + other.toString();
  }
}

typedef MapType = Map<Object, Object>;
typedef ListType = List<Object>;

extension on MapType {
  ListType extractValuesFromMap() {
    ListType list = [];
    forEach((key, value) {
      list.add(value);
    });
    return list;
  }
}
