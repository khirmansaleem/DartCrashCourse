//=============================> HANDLING LACK OF COMMON ANCESTORS <===================================
// WHEN YOU DONT HAVE ANY COMMON ANCESTOR, THEN OBJECT WILL BE THE COMMON ANCESTOR
// THEN YOU CAN'T DEFINE ANY TYPE EXCEPT THE OBJECT.
void main() {
  print(1.toInt() == 1);
  print((2.2).toInt() == 2);
  print((2.0).toInt() == 2);
  print('3'.toInt() == 3);
  print(['4', '5'].toInt() == 9);
  print([4, 5].toInt() == 9);
  print(['2.4', '3.5'].toInt() == 6);
  print(['2', '3.5'].toInt() == 6);
  print({'2', 3, '4.2'}.toInt() == 9);
  print(['2', 3, '4.2', 5.3].toInt() == 14);
}
//=================================================================================================
//sometimes generic extensions can't have any generic types, becoz the types we need to work on
// have no common ancestors.
//like dealing with string , int , double--> the only common ancestor can be a object.
// creating a extension that contains a functions that takes a object as input
// object can be list, single value
// it can be double, integer or string value.
// this function will convert every object to an integer
// sum all the values and return single integer value
//================trying to show that they dont have common ancestor but still we are creating extension
// by considering object as their ancestor
//=======================================================================================================

extension ToInt on Object {
  int toInt() {
    final list = [
      // if this is iterable of object then spread it as iterable of object
      if (this is Iterable<Object>)
        ...this as Iterable<Object>
// otherwise if this is an integer then remain it as integer
      else if (this is int)
        [this as int]
      else
        // try to parse the string return by 'toString' into double and round it off to get int in the end
        (double.tryParse(toString()) ?? 0.0).round()
    ];
    // it will return list of integers and then apply reduce function on list
    // which will sum all the elements of the list  to a single int value

    return list
        .map(
          (e) => (double.tryParse(
                    e.toString(),
                  ) ??
                  0.0)
              .round(),
        )
        .reduce(
          (lhs, rhs) => lhs + rhs,
        );
  }
}
