// ========================== MULTIPLYING AN ITERABLE ==================================================

void main() {
  var ages = [10, 20, 30];
  var twice = ages * 2;
  print(twice);
}

// whenever you add extension to a program, wherever you implement this doubling iterble
// operator, this will work
void goo() {
  var a = [1, 2];
  var b = a * 2;
}

// multiplying iterable by a given value. os simply multiply iterable by a integer
// this can be done by custom operator, no such operator like that exist right now
// you have to create an operator
// iterable*2 --> this should be handled by the custom operator
// the result should be same type of list, it should double the occurence of each element in the list
// synchronous generators can be used for generating iterating
// this refer to iterable on which extension working
extension<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (int i = 0; i < times; i++) {
      yield* this;
    }
  }
}
