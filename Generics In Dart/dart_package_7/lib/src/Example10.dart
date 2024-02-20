//==========================  GENERIC EXTENSION ON ANY DATA TYPE ========================================

void main() {
  final personName =
      personThing.checkType((Person p) => p.dance()) ?? 'unknnown type';
  print(personName);
  int a = 6;
  int c = 4;
  final aSumb = a.checkType((int c) => a * c) ?? 0;
  print(aSumb);
}

// we gonna create a generic extension on any data type and try to map that object
// on another object if mapping is successful return result of mapping otherwise return null \
// there is a parent class thing which has 2 subclasses :
// Person class
// Animal class
// then we can create an extension to check if that thing is person then call the function of
// that class
// creating extension on any data type.
class Thing {}

class Person extends Thing {
  String dance() {
    print("person is dancing");
    return 'person dance';
  }
}

class Animal extends Thing {
  String dance() {
    print("Animal is dancing");
    return 'animal dance';
  }
}

final Thing personThing = Person();
final Thing animalThing = Animal();

extension<T> on T {
  R? checkType<E, R>(R Function(E) f) {
    final shadow = this;
    if (shadow is E) {
      // if E and This are of same types then return  ths value
      return f(
          shadow); // whatever operation defined at the caller side will be performed by the function
      // and return the value R
    } else {
      return null;
    }
  }
}
