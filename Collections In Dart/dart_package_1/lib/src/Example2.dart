import 'package:collection/collection.dart';

//<======================================================================================================>
//<=======================================> "SETS" <======================================================>
//<=======================================================================================================>

void main() {
//<============================================================================================================>
// sets are very very useful collection types in dart
// they are collection of values in which any value which is seem to be equal to another value using some
// particular functionality or mechanism cannot be repeated twice
// unique list of values
// set is enclosed in curly braces
  final names = {'foo', 'bar', 'fro', 'goo'};
  // if you try to add 'foo to the list so many times, still it will appear once in the list
  // sets actually recognize that the value is duplicate and they do not place it again
  names.add('foo');
  names.add('foo');
  names.add('foo');
  print(names);
  print("=============================");
  // LIST Given, get rid of all the duplicate values
  // this can be done by converting list into  set using spread operator
  // '...' spread operator that spreads values from one collection and put those values to another collection
  // like moving values from list to set
  final names2 = ['foo', 'goo', 'final', 'foo'];
  final uniqueSet = {
    ...names2
  }; // handy way of getting rid of duplicates using set and spread operator
  print(uniqueSet);
  //SETS ARE MADE WITH HASHABLE OBJECTS

  print("===============================");
  // HOW HASHING WORKS
  final name1 = 'foo';
  final name2 = 'foo';
  final name3 = 'nanes';
  // name1 and name2 identical values have same hash code
  // HASH CODE IS A SPECIAL INTEGER VALUE BASED ON WHICH SETS RECOGNIZE WHETHER THIS VALUES APPEARS
  // TWICE OR NOT
  print(name1.hashCode);
  print(name2.hashCode);
  // but if we take same name in uppercase, hash code will be changed
  print(name3.hashCode);
  // HASH CODE TOGETHER WITH EQUALITY DETERMINES, WHETHER THIS VALUE CAN OCCUR TWICE OR NOT
  print("================================");
  //WITH SETS YOU CAN CHECK WHETHER THEY INCLUDE VALUE OR NOT
  if (names2.contains('foo')) {
    print("it contains the word foo");
  } else {
    print("it do not contain any value");
  }
  print("================================");
  // checking if 2 sets are equal or not
  // equality of sets is determined regardless of order of elements in the sets
  final ages1 = {20, 30, 40, 50};
  final ages2 = {30, 20, 50, 40};
  if (SetEquality().equals(ages1, ages2)) {
    print("Both Sets are equal");
  }
}
