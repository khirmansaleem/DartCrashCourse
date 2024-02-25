// =============================== KEEPING AN ISOLATE ALIVE ========================================
// we want to keep our isolate during our entire communication.
// we dont want it to create an instance each time.

import 'dart:isolate';
import 'dart:io';
import 'dart:convert';

void main() async {
  final responder = await Responder.create();
  //=====================================================================================
  // everytime user enter something in the terminal, we create an instance of the isolate.
  // creating an instance of isolate everytime to get a string back is not very desirable.
  // it will be more good if there is a way to keep this isolate alive while doing all of this.
  // we can have isolate to whom we send a message and it reply back everytime.
  // and this isolate will long last for the entire life of this program.
  //====================================================================================
  do {
    stdout.write('say something');
    final line = stdin.readLineSync(encoding: utf8);
    switch (line?.trim().toLowerCase()) {
      case null:
        continue;
      case 'exit':
        exit(0);

      default:
        final msg = await responder.getMessage(line!);
        print(msg);
    }
  } while (true);
}

// create a class that keep hold of this function for us, which is the isolate body.
// it will basically keep the isolate alive in itself
// holding the copy of that isolate.
class Responder {
  final ReceivePort rp;
  final Stream<dynamic> broadcastRp;
  final SendPort communicatorSendPort;
  Responder(
      {required this.rp,
      required this.broadcastRp,
      required this.communicatorSendPort});
  // create a function to spawn the isolate, and save that information within this responder.
  // the saved info will be properties inside this responder.
  static Future<Responder> create() async {
    final rp = ReceivePort();
    Isolate.spawn(_communicator, rp.sendPort);
// in this function, we need to save the receive port, broadcast receive port and send port.
    final broadcastRp = rp.asBroadcastStream();
    // await on the first message from communicator that is a "receive port send port"
    final SendPort communicatorSendPort = await broadcastRp.first;
    return Responder(
        rp: rp,
        broadcastRp: broadcastRp,
        communicatorSendPort: communicatorSendPort);
  }

  Future<String> getMessage(String forGreeting) async {
    communicatorSendPort.send(forGreeting);
    return broadcastRp
        .takeWhile((element) => element is String)
        .cast<String>()
        .take(1)
        .first;
  }
}

void _communicator(SendPort sp) async {
  // isolate itself has a receive port.
  final rp = ReceivePort();
  sp.send(rp.sendPort); // send my receive port's send port to the communicator.

  // it receives msgs from originator: stream of string // but we will get only one msg at a time
  final messages = rp.takeWhile((element) => element is String).cast<String>();
  await for (final message in messages) {
    for (final entry in messagesAndResponses.entries) {
      if (entry.key.trim().toLowerCase() == message.trim().toLowerCase()) {
        sp.send(entry
            .value); // if condition satisfies then send port send back the entry value to
        // caller.
        continue;
      }
    }
    // sp.send('I have no response to that!');
  }
}

const messagesAndResponses = {
  '': 'Ask me a question like "How are you?"',
  'Hello': 'Hi',
  'How are you?': 'Fine',
  'What are you doing?': 'Learning about Isolates in Dart!',
  'Are you having fun?': 'Yeah sure!',
};
