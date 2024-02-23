// ================================= STREAM ============================================

void main() async {
  getNumbers();
  // print(await getNumbers());
  await for (final i in getNumbers()) {
    print(i);
  }
  try {
    await for (final i in getNumberswithException()) {
      print(i);
    }
  } catch (e) {
    print(e);
  }
}

// streams are like chains of events
// future starts --> wait for 1 second --> produces value and then it stops.
// Stream like wait for 1 second then produce a value, or wait for one second and produce 3 values
// and can again wait for 1 second and produce a value and eventually then stops.
// between starting and stopping of stream there can be anything like mix and match of waiting and values/
// STREAM IS LIKE FUTURE BUT CAN CREATE MANY VALUES.

// different ways of creating streams

Stream<int> getNumbers() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

// can also create a stream function that returns exception:
Stream<int> getNumberswithException() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
    throw Exception('experimenting exception in streams');
  }
}
