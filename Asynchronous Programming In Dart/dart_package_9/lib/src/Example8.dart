// ========================================  YIELDING STREAMS ============================================

void main() async {
  await for (final i in combineNumbers()) {
    print(i);
  }
}

Stream<int> generateNumbers() async* {
  yield 10;
  yield 30;
  yield 40;
  yield 10;
  yield 20;
}

Stream<int> generateNumbers2() async* {
  yield 10;
  yield 30;
  yield 40;
  yield 10;
  yield 20;
}

Stream<int> combineNumbers() async* {
  yield* generateNumbers(); // it generate another stream witin this stream.
  yield* generateNumbers2();
}
