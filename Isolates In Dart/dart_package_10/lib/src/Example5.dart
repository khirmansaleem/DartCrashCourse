// ====================== SPAWNING ISOLATES USNG A URI ====================================
// how to spawn an isolate from inside a library.
// isolate will reside inside a library and we will spawn it
import 'dart:isolate';

void main() async {
  final uri = Uri.parse('package:dart_package_10/Isolates.dart');
  final rp = ReceivePort();
  Isolate.spawnUri(uri, [], rp.sendPort);
  final firstMessage = await rp.first;
  print(firstMessage);
}
