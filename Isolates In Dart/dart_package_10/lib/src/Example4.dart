// ====================== JSON DOWNLOADING AND PARSING WITH ISOLATES==============================
import 'dart:io';
import 'dart:isolate';
import 'dart:convert';

void main() async {
  final rp = ReceivePort();
  Isolate.spawn(_parseJsonIsolateEntry, rp.sendPort);
  final todo = rp
      .takeWhile((element) => element is Iterable<ToDo>)
      .cast<Iterable<ToDo>>()
      .take(1);
  await for (final todos in todo) {
    print(todos);
  }
}

// isolate that not only parse the content but also download the content.
void _parseJsonIsolateEntry(SendPort sp) async {
  final client = HttpClient();
  final uri = Uri.parse('https://jsonplaceholder.typicode.com/todos/');

  final todos = await client // go the cleint , get that url , send request
      .getUrl(uri)
      .then((req) => req.close())
      .then((response) => response.transform(utf8.decoder).join())
      .then((value) => jsonDecode(value) as List<dynamic>)
      .then((json) => json.map((map) => ToDo.fromJson(map)));
  sp.send(todos);
}

class ToDo {
  final int userId;
  final int id;
  final String title;
  final bool isCompleted;
  ToDo(this.userId, this.id, this.title, this.isCompleted);

  ToDo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        isCompleted = json['completed'];

  @override
  String toString() => '$userId $id $title $isCompleted';
}
