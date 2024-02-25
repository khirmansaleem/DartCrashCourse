// ==================================== SIMPLE ISOLATES ===========================================
// https://www.geeksforgeeks.org/thread-in-operating-system/

// Traditional Thread : can be considered as lightweight processes and they are contained within processes.
//that allow multiple sequence of instructions to run concurrently in same memory space
// to reduce the use of cpu resources and improve app performance.
//--> concept of doing multiple tasks at at a time.
/*
Process: The web server application itself, running on the server machine.
Threads:
Thread 1: Handles a request to load the homepage.
Thread 2: Processes a request to fetch a particular image or video.
Thread 3: Manages a database query that a user triggered by filling out a form

all these can operate simulaneously and independently handle the tasks mentioned. 
*/

//ISOLATES :: that allow concurrent execution of code in seperate memory space
// ensuring no memory is shared between isolates, thus avoiding issues related to concurrency like
// race conditions.

// equivalent of creating threads is isolates in dart.
// isolates are usually functions those that you usually spawn  or create an instance of those functions.
// those functions have some sort of port so that usually called send port.
// a function that creates the instance of that isolate is called the
// a function create an instance of isolate creates a receive thread using which it can send
// messages to isolate and receive messages from isolates.
// isolate get the copy of port, with that port it can only send messages.
// it's like thread, you create instance of it, it does some work and then you shut it.
//===============================================================================================================
// MAIN ISOLATE:: is the starting point where your application starts execution. it is the execution context
// where your main function runs. -> primary isolate where UI runs and or may be another isolate run.

// WORKER ISOLATE:: another isolates created during execution of your application using isolate.spawn()
// are the worker or background isolates seperate from main isolate.
//=================================================================================================================

import 'dart:isolate';

void main() async {
// now to consume that isolate
  await for (final msgs in getMessages().take(10)) {
    print(msgs);
  }
}

// "(_)": this signifies that this function can recieve an argument, but this argument is not used within
// the function body.
// CREATING ISOLATE FUNCTION THAT IS ABLE TO PRODUCE SOME MESSAGES.
// sending string to whoever creates an instance of it using isolate.
// communication between isolates is using messages, they do not share memory space like traditional threads.

// helper function that create an instance of the isolate.
Stream<String> getMessages() {
  final rp = ReceivePort();
  //spawn for creating an isolate use spawn(create and start)
// isolate.spawn is basiclally future.
  return Isolate.spawn(_getMessages,
          rp.sendPort) // send port of the rp , it passes send portto new isolate
      // there is send port associated with receive port that will send messages back to that
      // receive port.

      .asStream() // this gves stream of isolate
      // create a new stream by applying something on existing one
      .asyncExpand((_) => // turning isolate into messages from that isolate.
          rp) // this will ignore isolate and only return receive port message
      .takeWhile((element) => element is String)
      .cast<String>();
}

// actual body of isolate
void _getMessages(SendPort sp) async {
  await for (final now in Stream.periodic(
    const Duration(milliseconds: 200),
    (_) => DateTime.now().toIso8601String(),
  )) {
    sp.send(now);
  }
}
