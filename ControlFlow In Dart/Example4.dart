// WHILE LOOPS
void main() {
  const newList = ['foo', 'bar', 'baz', 'new', 'town'];

  // THIS loop evaluates one condition, if the condition is met then the loop is executed
  // otherwise jumps out of the loop
  // as long as the condition is true, everything inside the while loop will be executed

  int counter = 0;
  print("========================================");
  while (counter < newList.length) {
    print(newList[
        counter++]); // this first execute the print statement and then increment the counter
    //counter++;
  }
  print(
      "========================================"); // another way of doing the same thing
  int counter1 = -1;
  while (++counter1 < newList.length) {
    print(newList[counter1]);
  }
  print(
      "========================================"); // another way of doing the same thing
// reverse of above one
  int counter2 = newList.length;
  while (--counter2 >= 0) {
    print(newList[counter2]);
  }
  print(
      "========================================"); // another way of doing the same thing
  // in the "do while " loop, first it executes the statement in the do block
  // and then condition is evaluated in the end in while block
  int counter3 = 0;
  do {
    print(newList[counter3]);
    counter3++;
  } while (counter3 <
      newList.length); // first statements are executed in the do block and then
  // the condition is checked in the while block
  // let's mix our do while with continue and break statements
// DO WHILE LOOP EXECUTE IT'S STATEMENT AFTER IT'S BODY OR BLOCK OF CODE HAS BEEN EXECUTED
  print("===========================================");
  int counter4 = 0;
  do {
    final name = newList[counter4++];
    if (name == 'foo') continue;
    print(name);
  } while (counter4 < newList.length);
}
