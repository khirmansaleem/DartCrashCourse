// ================================ Stream.asyncMap and Fold =====================================
void main() async {
  //converting stream into a future using asyncMap
  final result = await getNames()
      .asyncMap((name) => extractCharacters(name))
      .fold('', (previous, element) {
    final elements = element.join(' ');
    return '$previous $elements ';
  });
  print(result);
}

// Transforming using async map and applying fold function on the result.
// async map on stream allow you to transform every element of a stream into it's future.
Stream<String> getNames() async* {
  yield "ali";
  yield "amber";
  yield "khirman";
}

Future<List<String>> extractCharacters(String source) async {
  final characters = <String>[];
  for (final char in source.split('')) {
    await Future.delayed(Duration(milliseconds: 2));
    characters.add(char);
  }
  return characters;
}
