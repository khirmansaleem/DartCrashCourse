// ================================== STREAM TRANSFORMERS =====================================

import 'dart:async';

void main() async {
  print("======================================");
  final cap = CapitalizeNames().bind(names);
  await for (final i in cap) {
    print(i);
  }
  print("======================================");
  //================ you can also create extension
  final cap2 = names.capitalizeNames;
  final cap3 = names.capitalizedNames2;
  await for (final a in cap2) {
    print(a);
  }
  print("======================================");
  await for (final b in cap3) {
    print(b);
  }
  print("======================================");
}

// STREAM TRANSFORMER IS A CLASS THAT TAKES ONE STREAM AND TRANSFORMS IT INTO OTHER STREAM.

Stream<String> names = Stream.fromIterable([
  'khirman',
  'adnan',
  'abrar',
]);

// incoming and result both are string
class CapitalizeNames extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map((name) => name.toUpperCase());
  }
}

extension HandleStreams on Stream {
  get capitalizeNames => transform(CapitalizeNames());
  get capitalizedNames2 => map((name) => name.toUpperCase());
}
