// ========================  ASYNCHRONOUS GENERATORS ============================================================
void main() async {
  await for (final value in getNumbers(end: 30, f: isEven)) {
    print(value);
  }
  print('============================================================');
  await for (final value in getNumbers(end: 30, f: isOdd)) {
    print(value);
  }
}

// a function that takes a start integer and the end integer,
// then it will go from that start to end value.
// you can use async generator inside a function that it whether yields or not yield based on
// the value returned from the another function used inside it.

typedef IsIncluded = bool Function(int number);

// create two boolean functions, one for filtering even numbers
// and other for filtering odd numbers
bool isEven(int num) => num % 2 == 0;
bool isOdd(int num) => num % 2 != 0;

Stream<int> getNumbers({int start = 0, int end = 20, IsIncluded? f}) async* {
  for (int i = start; i < end; i++) {
    if (f == null || f(i)) {
      yield i;
    }
  }
}
