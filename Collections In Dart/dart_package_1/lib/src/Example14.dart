import 'package:collection/collection.dart';

// =================== THE COLLECTION PACKAGE ============================================
// collection package, it's main functionality and use cases
void main() {
// Important functionalities in the collection package
// bool list : growable list of boolean values in your application
// 0000 0000 --> 8 bits boolean whose value false
// 0000 0001 --> boolean whose value true
// theoritically for boolean we are only flipping one bit
// so for 8 boolean values there can be 1 byte
// one byte can represent 8 booleans
// bool list internally uses the integer and flips the bits for every booolean
//to optimize the bits needed for storing boolean
// bool list seems like a normal list but internally it is optimizing the storage so
// it does not have to consume whole integer for one boolean value.
//=========================================================================================
// MEANS TO TELL THAT IF DEALING A LARGE NUMBER OF BOOLEANS , TRY TO AVOID SIMPLE LIST
// USE BOOL LIST THAT WILL PROVIDE OPTIMIZATION INTERNALLY
// optimizing storage internally
  testBoolList();
  print("========================================");
  canonicalizedMap();
  print("========================================");
  combineIterablesView();
  print("========================================");
  combineListView();
  print("========================================");
  combineMapView();
  print("========================================");
  testmapMerging();
}

void testBoolList() {
  final boolList = BoolList(10, growable: true);
  print(boolList);
  boolList[5] = true;
  print(boolList);
  boolList.length *= 2;
  print(boolList);
}

// in case of canonicalized map instead of hash map or equality
// you can determine the uniqueness of the key values,
// you can filter the key values based on the uniqueness criteria set by you
void canonicalizedMap() {
  final info = {'name': 'khirman', 'age': 24};
  // here you have set your own criteria for uniqueness of key like all keys with length =3 will be
  // included or any other can be
  var canonMap = CanonicalizedMap.from(info, (key) => key.length == 3);
  print(canonMap);
}

// Understand the functionality of COMBINE ITERABLES
void combineIterablesView() {
  // combine iterable view is the iterable of iterables
  final one = [1, 3, 4, 5];
  final two = [4, 5, 6, 7, 5, 6];
  final combineIterable = CombinedIterableView([one, two]);
  two.add(
      123); // as underlying iterable 'two' changes here so combineIterable reflect those changes
  print(combineIterable);
}

// combine listview is the list of list but it is unmodifiable
void combineListView() {
  final one = [1, 3, 4, 5];
  final two = [4, 5, 6, 7, 5, 6];
  final combinedList = CombinedListView([one, two]);
  print(combinedList);
  try {
    combinedList.add(33);
    //one.add(33);
  } catch (e) {
    print(e);
  }
}

// COMBINEE MAP IS UNMODIFIABLE, YOU CANNOT CHANGE IT'S CONTNT
void combineMapView() {
  final info1 = {'name': 'khirman', 'age': 24};
  final info2 = {'name1': 'adnan', 'age1': 24};
  final info3 = {'name2': 'ayla', 'age': 2};

  final combinedMap = CombinedMapView([info1, info2, info3]);
  // the changes you made to underlying maps are  reflected to combine map
  info3['name2'] = 'zamda';
  print(combinedMap);
  // you cannot change the value of combined map

  try {
    combinedMap['name'] = 'zamda';
  } catch (e) {
    print(e);
  }
}

// if you have duplicate key, you should know how to handle them
void testmapMerging() {
  // in case of duplicate keys, it takes the values from the second map
  // merge maps and how to react in case of duplicate keys
  final info1 = {'name': 'khirman', 'age': 22};
  final info2 = {'name1': 'adnan', 'age': 24, 1: 4};

  final mergedMap = mergeMaps(
    info1,
    info2,
    value: (one, two) => one,
  ); // here in case of duplicate keys it will prioritize info1 not info2
  print(mergedMap);
}
