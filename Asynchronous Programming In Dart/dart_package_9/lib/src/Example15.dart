//===================================  BROADCAST STREAMS =======================================
// stream -> one listener can listen at a time.
// broadcast stream, multiple listeners can listen and consume it at the same time.
// when we are using await and iterating over stream , we are actually listening to it.

import 'dart:async';

void main(List<String> args) async {
  await nonBroadcastStreamExample();
  await broadcastStreamExample();
}

Future<void> nonBroadcastStreamExample() async {
  final controller = StreamController<String>();
  controller.sink.add('Bob');
  controller.sink.add('Alice');
  controller.sink.add('Joe');
// we cannot listen for a non broadcast stream 2 times

  try {
    await for (final name in controller.stream) {
      print(name);
      await for (final name in controller.stream) {
        print(name);
      }
    }
  } catch (e) {
    print(e);
  }
}

Future<void> broadcastStreamExample() async {
  late final StreamController<String> controller;

  controller = StreamController<String>.broadcast();
// create subscriptions to broadcast controller.
  final sub1 = controller.stream.listen((name) {
    print('sub1: $name');
  });

  final sub2 = controller.stream.listen((name) {
    print('sub2: $name');
  });

  controller.sink.add('Bob');
  controller.sink.add('Alice');
  controller.sink.add('Joe');
  controller.close();

  controller.onCancel = () {
    print('onCancel');
    sub1.cancel();
    sub2.cancel();
    sub1.cancel();
    sub2.cancel();
  };
}
