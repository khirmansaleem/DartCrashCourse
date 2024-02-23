// ======================== ANOTHER EXAMPLE OF STREAM.ASYNC EXPAND ===================================

void main() async {
  final name3times = getNames().asyncExpand((name) => times3(name));
  await for (final i in name3times) {
    print(i);
  }
}

Stream<String> getNames() async* {
  yield "ali";
  yield "amber";
  yield "khirman";
}

// function that takes a string value and repeat it 3 times.

Stream<String> times3(String value) =>
    Stream.fromIterable(Iterable.generate(3, (_) => value));
