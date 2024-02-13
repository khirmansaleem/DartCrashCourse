//=================================== ITERABLES IN DART ===========================================
// Lazily evaluated list
// it does not require all the elements of the iterables in the memory at once
// computation or transformation of elements is delayed, not the initialization of elements itself
// work to transform or compute it's elements does not happen untill you iterate over the list
// in case of usual list the doubling computation will have happen when assign map function to the list
// while in case of iterables computation happens when you actually iterate over doubleNumbers
void main() {
  Iterable<int> numbers = {1, 2, 3, 4, 5, 6, 8};
  var doubleNumbers = numbers.map((n) => n * 2);
  print(
      doubleNumbers); // now it trigger the lazy computation for each element in the iterable
  print("<=====================================================>");
  // computation function in a iterable will not be called untill you called the function
  final iterable = Iterable.generate(
      20,
      (i) =>
          getName(i)); // here getName() is not called untill use this iterable
  //print(iterable);
  print("<=====================================================>");
  for (final name in iterable.take(2)) {
    // give me those 2 lazily evaluated generated values.
    print(name);
  }
}

String getName(int i) {
  print("getName() got called");
  return 'john #$i';
}
