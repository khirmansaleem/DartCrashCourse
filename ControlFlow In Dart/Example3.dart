// MODERN FOR LOOPS
// MODERN LOOPS USUALLY LOOSE access to the index sometimes you still need an index

void main() {
  const newList = ['foo', 'bar', 'baz', 'new', 'town'];
// modern for loop for iterating through the list do not need an index to access the elements in the list
// we are avoiding the use of array in accessing the elements of the list
  print('---------------------------------------------------------');
  for (final name in newList) {
    // we can directly access the element from array without using arrays
    print(name);
  }
  print('---------------------------------------------------------');
// continue statement is used inside loops when you want your loop to jump over to next iteration without
// executing the next statements in the current iteration
// modern for loops are intelligent
// continue continue the next iteration if there is any, if there is not then it breaks out of loop simply
  for (final name in newList) {
    if (name.startsWith('b')) {
      // if this is true then after executing continue this will jump to next iteration
      // and print statement will not be executed
      continue;
    }
    print(name);
  }
  print('---------------------------------------------------------');
// USE OF break keyword in loops : it breaks out of loop or used for stopping the loop at some point
  for (final name in newList) {
    if (name.startsWith('b')) {
      // when this condition is satisfied it breaks out of loop and stop the loop
      break;
    }
    print(name);
  }
  print('---------------------------------------------------------');
  // MOVING BACKWARDS IN MODERN FOR LOOPS
  // ITERABLES COMES IN COLLECTION CHAP AND IT IS KIND OF LIST
  for (final name in newList.reversed) {
    print(name);
  }
  //ITERATING FROM 0 TO SOME VALUE IN MODERN FOR LOOPS
  print('---------------------------------------------------------');
  for (int value in Iterable.generate(20)) {
    print(value);
  }
}
