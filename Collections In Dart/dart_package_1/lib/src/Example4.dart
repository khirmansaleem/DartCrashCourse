//======================================MAPS =====================================================
// MAPS are the 'key: value' collection
// key that specify a value, and key should be unique that specify a value
void main() {
  // define a map in dart
  final info = {'name': 'khirman', 'age': 24};
  //print that map
  print(info);
  print("=================================");
  // you can access the value using it's key
  print(info['name']); // now it will display the value only
  // you can also print keys and values seperately
  print(info.keys);
  print(info.values);
  print("=================================");
  // you can also add a key, value if the key is abset
  info.putIfAbsent('name2', () => 'Adnan');
  info.putIfAbsent('age2', () => 23);
  print(info);
  print("=================================");
  // Modify the value placed in a key
  info['age2'] = 24;
  print(info);
  print("=================================");
// Iterate through the entries of map in DART
// dart do not have support for tuples yet
  for (final entry in info.entries) {
    print('${entry.key} : ${entry.value}');
  }
  print("=================================");
  // if we want to check map contains particular key/value
  if (info.containsKey('name')) {
    print(info.containsKey('name'));
  }
  print("=================================");
  // similarly can check for value as well
  if (info.containsValue(24)) {
    print(info.containsValue(24));
  }
  print("=================================");
  // TRY to return the value of non- existing key
  // just returns null in that case
  print(
      info['name4']); //this will return null as key is not existing in the map
  print("=================================");
  // MAPS CAN HAVE INTEGERS KEYS NOT NECESSARILY STRING
  final numbers = {1: 'one', 2: 'two'};
  print(numbers);
}
