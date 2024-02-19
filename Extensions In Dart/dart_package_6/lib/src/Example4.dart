// =========================  FINDNG DUPLICATE VALUES IN ITERABLES =====================================
// extension on iterables that returns boolean whether that iterable contains duplicates or not

// you can check for duplicates in the iterable, by converting it to a set
// if it's length not equal to the set length
void main() {
  Iterable<int> a = [1, 2, 2, 1, 3, 4, 4, 5];
  Iterable<String> b = ["foo", "foo"];
  Iterable<double> c = [1.1, 2.2, 2, 1.0, 3.9, 4, 4, 5];
  print(a.containsDuplicate());
  print(b.containsDuplicate());
  print(c.containsDuplicate());
}

extension ContainsDuplicate on Iterable {
  bool containsDuplicate() {
    if (length != toSet().length) return true;
    return false;
  }
}
