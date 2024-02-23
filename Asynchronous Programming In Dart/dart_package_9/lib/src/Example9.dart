// ========================== STREAM CONTROLLERS =================================
import 'dart:async';

void main() async {
  final controller = StreamController<String>();
  controller.sink.add('khirman');
  controller.sink.add('adnan');
  controller.sink.add('ayla');
  controller.sink.add('marjaan');
  // now you can iterate over the controller.stream,
  await for (final i in controller.stream) {
    print(i);
  }
  controller.close();
}
//--------------------------------------------------------------------------------------------------------
// streams starts in the future and also end in the future--> little bit abstract that how they work
// stream controllers wrap streams inside objects so you can control in real times.
// you put your values in sink 

// Stream controller is an object, that you can add values to that object,
// and also read values from that object.
// stream is basically read only, where in case of stream controller,
// you can both read and write.
//---------------------------------------------------------------------------------------------------
