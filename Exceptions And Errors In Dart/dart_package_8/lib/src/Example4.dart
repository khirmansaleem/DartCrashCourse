// <=======================================> FINALLY <=============================================================>
//=========================================================================================================
void main() async {
  final db = Database();

  try {
    await db.getData();
  } on DatabaseNotOpenException {
    print('we forgot to open the data base');
  } finally {
    // finally is a must block that is executed after try and catch no matter what it is in the
    // try catch block
    print(
        "this block will be executed after try / catch no matter whatever in the try and catch");
  }
}

class Database {
  bool _isDbOpen = false;

  Future<void> open() {
    return Future.delayed(Duration(seconds: 1), () {
      _isDbOpen = true;
      print("Database is open");
    });
  }

  Future<String> getData() {
    if (!_isDbOpen) {
      throw DatabaseNotOpenException();
    }
    return Future.delayed(Duration(seconds: 1), () => 'is opened');
  }

  Future<void> close() {
    return Future.delayed(Duration(seconds: 1), () {
      _isDbOpen = false;
      print("Database is closed");
    });
  }
}

class DatabaseNotOpenException implements Exception {
  @override
  String toString() => 'Database not opened exception';
}
