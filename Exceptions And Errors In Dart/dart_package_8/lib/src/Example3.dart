//<<===========================>>> RETHROW <<<=======================================================>>

void main() {
  try {
    catchMasterExceptions(-1);
  } catch (error, stackTrace) {
    print(error);
    print(stackTrace);
  }
}
// if you try catch block cannot handle certain exception, you can specifically mark them as rethrow
// and these exceptions will come back to the user.

void catchMasterExceptions(int age) {
  try {
    print(Master(
        age)); // calling the instance of master class inside this function
    // for catching exceptions instead of just throwing
  } on AgeException {
    rethrow;
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
