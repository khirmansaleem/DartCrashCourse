//=====================================LISTS======================================================================
//are often called arrays in other programming languages
//lists, maps, sets , iterables, dictionary.
// collection of values written in serial
// dart has created generic class for LISTS, generic class allows the list for anything like any data type
// int , string, double or anything.
// generic list class allow you to create list for anything
void main() {
  const newList = [1, 2, 3, 4, 5, 67, 80, 12, 33, 44];
  print(newList); // display list
  // how to iterate over the list
  for (final name in newList) {
    print(name); // this prints the elements of the list
  }
  print('--------------------------------------------------');

  // Reverse the elements of the list as following
  for (final name in newList.reversed) {
    print(name);
  }
  print('--------------------------------------------------');
// Search for an element in the list
  if (newList.contains(44)) {
    print("This list contains the value 44");
  }
  print('--------------------------------------------------');
  // Test for objects existing
  // "Where" method is used to filter a collection based on some condition.
  // it returns the iterable of elements that satisfy the given condition mentioned.
  // This is used where you need to make subset of elements that meet certain criteria.
  // HERE IT CAN BE USED TO FILTER OUT EVEN NUMBERS FROM LIST OF NUMBERS
  Iterable<int> evenNumbers = newList.where(
      (number) => number % 2 == 0); // if any element is true it is included
  // in resulting iterable
  // we can convert this iterable back to the list
  // now display even numbers in the list
  List<int> eveNumbrs = evenNumbers.toList();
  print(eveNumbrs);
  print('--------------------------------------------------');
// SUBSCRIPTS IN LISTS
  print(eveNumbrs[0]); // accessing elements in list with subscripts
  print('--------------------------------------------------');
  // accessing at an invalid index will throw an exception.
  // you can handle that index exception by try and catch and get to know the exception
  try {
    print(eveNumbrs[10]);
  } catch (e) {
    print(e);
  }
  print('--------------------------------------------------');
  // Sublist can also be created from the original list using keyword sublist
  //in this case, you give a Start Index  and End Index.
  newList.sublist(4, 6).forEach((element) {
    // modern loop through each element in the list
    // and starting index of list is 4, and ending index is 6 here
    print(element);
  });
  print('--------------------------------------------------');
  // ------------------------------------------------------
  // MUTATE THE INTERNAL CONTENTS OF THE LIST IN DART
  //-------------------------------------------------------
  // only list declared with const cannot mutate
  final ages = [20, 30, 40, 50, 60];
  ages.add(100);
  ages.add(40);
  ages.remove(50);
  print(ages);
  print('--------------------------------------------------');
  // COMPARISONS OF 2 LISTS HAVING THE CONTENTS OF SAME TYPE
  const names1 = ['khirman', 'rahma'];
  const names2 = ['khirman', 'rahma'];
  if (names1 == names2) {
    print('Both Lists are equal.');
  }
  print('--------------------------------------------------');
  //=====================MAPPTING THE ELEMENTS OF THE LIST===========================================
  // iterating through the elements of the list and converting them to another value of same
  //type or different type.
  // map function applies a function to each element in the list and transform them into some other form

  var squaredAges = ages.map((number) => number * number);
  var backtoList = squaredAges.toList();
  //print(squaredAges);
  print(backtoList);
  print('--------------------------------------------------');
  // REDUCE THE WHOLE LIST TO A SINGLE VALUE
  // like if you want to grab the sum of all the elements inside a list
  //USE OF FOLD FUNCTION IN LISTS:
  // it takes two parameters previous value and current value
  // ONE VALUE FOR ENTIRE LIST
  //==========================================================
  int sum = ages.fold(0, (previousValue, element) => previousValue + element);
  print(sum);
  // given the list of Strings, get the total length of the list
  // by combining the length of each element in the list
  var names = {'foo', 'bar', 'new', 'name'};
  int totalLength =
      names.fold(0, (previousValue, element) => previousValue + element.length);
  print(totalLength);
  print('--------------------------------------------------');
  // if there is a list of strings, fold the list into a single string

  var singleName =
      names.fold('', (previousValue, element) => previousValue + " " + element);
  print(singleName);
}
