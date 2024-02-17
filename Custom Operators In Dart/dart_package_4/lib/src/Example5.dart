// ============================ SUBTRACTING ITERABLE FROM ANOTHER ITERABLE ===========================

void main() {
  Iterable<int> numbers = [1, 2, 3, 4, 5];
  Iterable<int> numbers1 = [1, 20, 3, 4, 77];
  print(numbers - numbers1);
}
// SUBSTRACTING ITERABLES, IN THE SAME WAY WE DID IN PREVIOUS EXAMPLE FOR STRINGS

extension MinusIterable<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) =>
      // using the filtering operation in iterable
      where((element) => !other.contains(element));
}
