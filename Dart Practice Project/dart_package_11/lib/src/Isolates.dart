import 'dart:isolate';

void main() async {
  await for (final number in getNumbers()) {
    print(number);
  }
}

Stream<int> getNumbers() {
  final rp = ReceivePort();

  // Immediately convert the ReceivePort stream into a broadcast stream
  final broadcastRp =
      rp.asBroadcastStream(); // listening twice, once to the integers numbers
  // and secondly to the sendPort.
  Isolate.spawn(displayNumbers, rp.sendPort);

  // Set up a listener on the broadcast stream to handle messages
  broadcastRp.listen((message) {
    if (message is SendPort) {
      // This is the SendPort from the isolate for sending messages back to it
      final sendPortToIsolate = message;
      // Now send the "start" message to the isolate
      sendPortToIsolate.send("Start sending numbers");
    }
  });

  // Filter for integer messages from the isolate and cast them
  return broadcastRp.where((message) => message is int).cast<int>();
}

void displayNumbers(SendPort sendPort) async {
  final rp = ReceivePort();
  sendPort.send(
      rp.sendPort); // Send this isolate's SendPort back to the main isolate

  rp.listen((message) {
    print(message);
    if (message == "Start sending numbers") {
      // Start sending numbers upon receiving the start message
      for (int i = 1; i <= 20; i++) {
        if (i % 2 == 0) {
          Future.delayed(const Duration(seconds: 1), () => sendPort.send(i));
        }
      }
    }
  });
}
