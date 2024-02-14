// ===================IMPLEMENTING COMPARABLE ON ENUMERATIONS=========================================

void main() {
// IMPLEMETATION OF COMPARISONS ON ENUMERATIONS
  final cars = TeslaCars.values;
  print(cars);
  // this will sort based on tires property values
  print([...TeslaCars.values]..sort());
}

enum TeslaCars implements Comparable<TeslaCars> {
  // these are cases with values of those properties
  tesla1(tires: 2),
  tesla2(tires: 4),
  tesla3(tires: 6);

  final int tires;
  const TeslaCars({
    required this.tires,
  });
  @override
  int compareTo(TeslaCars other) => tires.compareTo(other.tires);
}
