import 'package:collection/collection.dart';

// =================COLLECTION COMPREHENSIONS===========================================
// when you are using list , you are producing lists
// but when you perform functionally, you are producing iterables
// in case of list evaluation all the values are printed to console,
// while in case of iterables , if there are large number of elements, all are not printed to the
// console, only first some and last some are printed, becoz tey are lazily evaluated
void main() {
// SET COMPREHENSION
// given a string , you have to filter out abc from the given string using
// conversion to set
  String magicalSpell = 'abracadabra';
  final result = {
    for (var char in magicalSpell.split('')) 'abc'.contains(char) ? null : char
    // if character is one of the abc then return null otherwise return character
  }
    ..removeAll([
      null
    ]) // remove all the null values from the set and cast entire string to 'string'
    // instead of nullable string
    ..cast<String>();
  print(result);
  print('===============================================');
  // ================================= LIST COMPREHENSION ================================================
  //======================================================================================================
  final allNumbers = Iterable.generate(100);
  final evenNumbers = [
    // this is basically list, we are performing operation and assigning
    // it some result for sure
    for (var numbers in allNumbers)
      if (numbers % 2 == 0) numbers
  ];
  print(evenNumbers);
  // =============ITERABLE COMPREHENSION
  // Functional way of producing even numbers will return a iterable instead of list
  final functionalWay = allNumbers.where((number) => number % 2 == 0);
  print(functionalWay);
// ======================== MAP COMPREHENSION =================================================
// map comprehension perform operation on list and convert it into corresponding map
  final names = ['foo', 'gogo', 'fofof'];
  final mapNames = {
    for (final name in names) {name: name.length}
  };
  print(mapNames);
}
