// ====================>>> THROWING IN CLASS CONSTRUCTORS <<<=========================================
// Difference between errors and exceptions
// exceptions are meant to be caught where errors are not meant to be caught
// exception is something that you as a programmer cannot plan for such as getting data from
// the user and passing it to a class that does something and that class cannot accept that value.
// where as error is something that is clearly documented like passing value of 1000 to
//function accepting only 100 values.
// adding value to immutable list is runtime exception
//======================================================================================================
void main() {
  // const a = [1, 2, 4, 5];
  // a.add(4);
  catchMasterExceptions(340);
}
//===================================================================================================>
// Throwing exception in constructor of class                                                         =
// you can either throw exception or throw string => or general saying you can throw anything in dart =
// and they can be catch using try catch in dart                                                      =
//===================================================================================================>
// now make a function that catches those exceptions of the master class

void catchMasterExceptions(int age) {
  try {
    print(Master(
        age)); // calling the instance of master class inside this function
    // for catching exceptions instead of just throwing
  } catch (e) {
    print(e);
  }
}

class Master {
  final int age;
  Master(this.age) {
    if (age < 0) {
      throw Exception('Age less than 0 is not possible');
    } else if (age > 140) {
      throw "IT IS UNREALISTIC TO LIVE THIS LONG";
    } else {
      print("this is feasible age");
    }
  }
}
