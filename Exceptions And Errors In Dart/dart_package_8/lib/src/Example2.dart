//===================== CUSTOM EXCEPTION CLASS IN DART ==============================================

void main() {
  catchMasterExceptions(150);
}
// if you are throwing specific type of exception alot of times, like invalid age, in 20 different places,
// in those cases, it is good idea to create custom exception class
// it can prepare a message for you or some special properties that can be used while capturing or
// throwing exception

// create a custom exception class for throwing age exception
void catchMasterExceptions(int age) {
  try {
    print(Master(
        age)); // calling the instance of master class inside this function
    // for catching exceptions instead of just throwing
  } on AgeException catch (e, stackTrace) {
    print(e);
    //print(stackTrace);
  }
}

class AgeException implements Exception {
  final int age;
  final String message;
  const AgeException(this.age, this.message);
  @override
  String toString() => 'Exception: $age && $message';
}

class Master {
  final int age;
  Master(this.age) {
    if (age < 0) {
      throw AgeException(age, 'age cannot be less than 0');
    } else if (age > 140) {
      throw AgeException(age,
          'age cannot be greater than 140, not possible to live this longer.');
    } else {
      print("this is feasible age");
    }
  }
}
