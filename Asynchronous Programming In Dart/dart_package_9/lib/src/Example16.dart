// ============================ STREAM TIMEOUT EXAMPLE==========================================

import 'dart:async';
// error lens

void main(List<String> args) async {
  try {
    await for (final name in getNames().withTimeoutBetweenEvents(
      const Duration(
        seconds: 3,
      ),
    )) {
      print(name);
    }
  } on TimeoutBetweenEventsException catch (e, stackTrace) {
    print('TimeoutBetweenEventsException: $e');
    print('Stack trace: $stackTrace');
  }
}
// stream to produce atleast one value in x sec, if they take more than x second you can say timeout.
// stream that produces values timely.
// you want stream to work in timely fashion, produce atleast one values in every x no of seconds.
// stream transformer errors out if the given stream is not able to produce value in given number
// of seconds.

Stream<String> getNames() async* {
  yield 'John';
  await Future.delayed(const Duration(seconds: 1));
  yield 'Jane';
  await Future.delayed(const Duration(seconds: 10));
  yield 'Doe';
}

extension WithTimeoutBetweenEvents<T> on Stream<T> {
  Stream<T> withTimeoutBetweenEvents(Duration duration) => transform(
        TimeoutBetweenEvents(
          duration: duration,
        ),
      );
}

class TimeoutBetweenEvents<E> extends StreamTransformerBase<E, E> {
  final Duration duration;

  const TimeoutBetweenEvents({
    required this.duration,
  });

  @override
  Stream<E> bind(Stream<E> stream) {
    StreamController<E>? controller;
    StreamSubscription<E>? subscription;
    Timer? timer;
// when there is a stream x--2 sec -- x2 , and if the timer duration is 1 sec and it will stop in 1 sec
// and throw exception in the controller and entire stream will stop.
    controller = StreamController(
      // listening to the input streams
      onListen: () {
        subscription = stream.listen(
          (data) {
            // every time we get data, we need to kick start timer again

            timer?.cancel(); // cancel the timer
            timer = Timer.periodic(
              // as soon as we do this, create a new timer
              duration, // duration is value to be passed while constructor call
              (timer) {
                controller?.addError(
                  TimeoutBetweenEventsException(
                    // if the timer gets new value in , then we will get an exception
                    'Timeout',
                  ),
                );
              },
            );
            controller?.add(data);
          },
          onError: controller?.addError,
          onDone: controller?.close,
        );
      },
      onCancel: () {
        subscription?.cancel();
        timer?.cancel();
      },
    );

    return controller.stream;
  }
}

class TimeoutBetweenEventsException implements Exception {
  final String message;
  TimeoutBetweenEventsException(this.message);
}
