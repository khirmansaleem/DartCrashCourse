// =====================================> Synchronous Generator <=============================================

void main() {
  // simpler way of creating iterables inside your own function
  // using synchronous generators
  for (final name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  yield 'boo'; // add names to the iterable
  yield 'foo';
  yield 'go go';
  yield 'khirman';
  yield* getNewNames();
}

Iterable<String> getNewNames() sync* {
  yield 'boo';
  yield 'foo';
  yield 'go go';
  yield 'khirman';
}
