//============================ GENERIC SORTING WITH COMPARABLE ==============================================

void main() {
  sort(ascending: false);
}
// CREATE GENERIC FUNCTIONS AND PASS THEM AS FIRST CLASS CITIZENS
// CREATE GENERIC FUNCTIONS AND PASSED THEM TO OTHER FUNCTIONS
// sort function inside using comparable to compare values ,so we are customizing our values
// and passing our customized comparable that decides whether to sort in descending or
// ascending order

int lessThan<T extends Comparable>(T a, T b) => a.compareTo(b);
int greaterThan<T extends Comparable>(T a, T b) => b.compareTo(a);

void sort({required bool ascending}) {
  var ages = [20, 40, 10, 12, 30, 22, 50];
  final comparator = ascending ? lessThan : greaterThan;
  print([...ages]..sort(comparator));
}
