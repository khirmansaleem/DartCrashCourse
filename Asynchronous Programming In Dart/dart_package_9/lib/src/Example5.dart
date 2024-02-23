// =============================> Stream.async Expand <====================================================
// it is a function on streams that for any value an stream produces, you can another stream
// for every value the first stream produces, it can produce another stream.
// every value can branch out to a new stream.

void main() async {
// calling the getCharacters functions with the values produced by getName()
  final result = getName().asyncExpand((name) => getCharacters(name));
  await for (final a in result) {
    // it takes both strings returning from getName() and converting
    // them to characters.
    print(a);
  }

  // stream can be accessed using await for loop
  await for (final i in getName()) {
    print(i);
  }
  await for (final j in getCharacters('MAMMMMA')) {
    print(j);
  }
}

Stream<String> getCharacters(String fromString) async* {
  for (int i = 0; i < fromString.length; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield fromString[i];
  }
}

Stream<String> getName() async* {
  await Future.delayed(const Duration(seconds: 1));
  yield 'khirman';
  await Future.delayed(const Duration(seconds: 1));
  yield 'adnan';
}
