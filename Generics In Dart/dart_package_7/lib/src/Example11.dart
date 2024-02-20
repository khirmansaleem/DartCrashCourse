//========================= GENERIC FUNCTION POINTERS ================================

void main() {
  print(divide(10.2, 10));
  print(divide(10, 10));
  final ans = divide(20, 10);
}

// function that divide 2 numbers, those 2 numbers can be integers or double

T divide<T extends num>(T a, T b) {
  if (a is int && b is int) {
    return a ~/ b as T; // truncate division, remove what is after point
  } else {
    return a / b as T;
  }
}
