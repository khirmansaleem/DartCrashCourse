//=====================================> CUSTOM THROWS ANNOTATION  <===============================================

void main() {
  final animal = Animal(age: 30);
  final dog = Dog(age: 20, isTired: true);
  try {
    animal.run();
  } on UnimplementedError {
    print('throw this exception');
  }
  try {
    dog.run();
  } catch (e) {
    print(e);
  }
}

// in dart, you can annotate a function with a class, tell dart that a specific function throws
// a specific exception.
// so who ever calls this function can immediately see that it throws specific exception

class Throws<T> {
  final List<T> exceptions;
  const Throws(this.exceptions);
}

class DogIsTooOldException implements Exception {
  const DogIsTooOldException();
}

class DogIsTiredException implements Exception {
  const DogIsTiredException();
}

class Animal {
  final int age;
  Animal({required this.age});
  // it is just way of telling developer about error
  @Throws([UnimplementedError]) // annotating the function containing error
  void run() => throw UnimplementedError(); // errors are not be caught
}

class Dog extends Animal {
  final bool isTired;
  Dog({required super.age, required this.isTired});

  @Throws([DogIsTiredException, DogIsTooOldException])
  @override
  void run() {
    if (age > 10) {
      throw DogIsTooOldException();
    } else if (isTired) {
      throw DogIsTiredException();
    } else {
      print("Dog is running");
    }
  }
}
