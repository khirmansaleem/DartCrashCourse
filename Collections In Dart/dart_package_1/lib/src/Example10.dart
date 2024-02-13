// ===========================> EXTENDING LISTBASE TO CREATE A SAFER LIST <========================================
// custom list formation in dart
// we will create our own safe list that solves few problems that normal list have
// first understand why default implementation of list is not safe that much ?

// the implementation of first and last in dart is String so it gives exception in case of empty list
// while other modern languages have optional string implmenttion for that
// we can solve this issue by creating our own list that handles this issue well
// we dont need crash while dealing with our empty list, we need a list that handles such situations

import 'dart:collection';

void main(List<String> args) {
  const notFound = 'NOT_FOUND';
  const defaultString = 'DEFAULT_VALUE';
  final myList = SafeList(
    absentValue: notFound,
    defaultValue: defaultString,
    values: ['Bar', 'Baz'],
  );

  print(myList[0]); // bar
  print(myList[1]); // baz
  print(myList[2]); // not found

  myList.length = 4;
  print(myList[3]); // default value

  myList.length = 0;
  print(myList.first); // not found
  print(myList.last); // not found
}

// as our list is the list of strings not the optional list so what our safe list class does
// as we assign new length to the string list, which is greater than current length, app will crash
// because dart does not know what to place in place of that extended list value, it cannot place null there
// becoz it is not optional list, then what we can do is
// make a class SafeList that will handle such situations and filled the new spaces with the default values
class SafeList<T> extends ListBase<T> {
  final List<T> _list;
  final T
      absentValue; // this value will be returned in place of if value dont exist
  final T
      defaultValue; // when change the size of the list, we will populate the list with default value.

  SafeList({
    required this.defaultValue,
    required this.absentValue,
    List<T>? values,
  }) : _list = values ?? [];
// operator returns an element at that particular index
// if index less than list length return the element otherwise return the absent value
  @override
  T operator [](int index) =>
      index < _list.length ? _list[index] : absentValue; //

// assign a value to the particular index
  @override
  void operator []=(int index, T value) => _list[index] = value;

  @override
  int get length => _list.length; // this returns length of the list

  @override
  set length(int newLength) {
    if (newLength <= _list.length) {
      // if new length less than current length
      // change the list length to the new length
      _list.length = newLength;
    } else {
      _list.addAll(
        // otherwise fill the list with default values
        List.filled(
          // new length =10, 5 elements before, so the 5 elements will be filled in list at end
          newLength - _list.length,
          defaultValue,
        ),
      );
    }
  }

// we will fix the first and last elements
  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
