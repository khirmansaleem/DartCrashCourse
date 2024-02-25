//============================= ISOLATE COMMUNICATION ====================================================

import 'dart:isolate';
import 'dart:io';
import 'dart:convert';

void main() async {
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
        final msg = await getMessage(line!);
        print(msg);
    }
  } while (true);
}

// allow you to enter a message, everytime you enter a message will spawn a isolate that will calculate
// a response and send that response  back to us.
// how to use send port and receive port to communicate between isolate and wrapper function which spawn that
// isolate.
const messagesAndResponses = {
  '': 'Ask me a question like "How are you?"',
  'Hello': 'Hi',
  'How are you?': 'Fine',
  'What are you doing?': 'Learning about Isolates in Dart!',
  'Are you having fun?': 'Yeah sure!',
};
//<=============================================================================================================>
// send port is just a vessel for communicating back to someone who created an instance of this isolate.
// in current problem we also need to get message from them where the instance of isolate created.
// as we know send port has no receive port, then how can we do this?
// here alternatively you can create an instance of receive port and send your receive port.
// to the originator.
// then you can use your receive port for receiving messages from originator.
// everytime we type a message, it will create an instance of isolate , and then it will response with message.
//<===============================================================================================================>
Future<String> getMessage(String forGreeting) async {
  // function that wrap isolate need to create receive port to communicate with isolate.
  final rp = ReceivePort();
  Isolate.spawn(_communicator,
      rp.sendPort); // we give a copy of send port to isolate using which isolate
  // can send to corresponding receive port
  // we want "receive port" to listen twice so we can set it as broadcast stream
  final broadcastRp = rp.asBroadcastStream();
  // await on the first message from communicator that is a "receive port send port"
  final SendPort communicatorSendPort =
      await broadcastRp.first; // using the send port of the isolate
  // it can send messages to the rp of that send port, no need to pass whole receive port here

  communicatorSendPort.send(forGreeting);
  return broadcastRp
      .takeWhile((element) => element is String)
      .cast<String>()
      .take(1)
      .first;
}

//===============================================================================================================
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
    sp.send('I have no response to that!');
  }
}
