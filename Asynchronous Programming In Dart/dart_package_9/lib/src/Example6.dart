// ======================================= STREAM.REDUCE ============================================

void main() async {
  final a =
      generateNumbers().fold(0, (previous, element) => previous + element);
  final b = generateNumbers().reduce((a, b) => a + b);
  print(await a);
  print(await b);
}

// reduce gives you current and previous values of a stream. and allow you to do any calculations on it.

Stream<int> generateNumbers() async* {
  yield 10;
  yield 30;
  yield 40;
  yield 10;
  yield 20;
}
