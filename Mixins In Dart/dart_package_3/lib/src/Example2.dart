// =========================== MIXINS AND FUNCTIONS PARAMETERS==================================
void main() {
  final person1 = Person('KASHMIR', 'MUZAFFARABAD');
  passMixin(person1);
}
// mixins are data types themselves,
// accept mixin as a parameter of a function.
// last name and first name getter property of type string
// YOU CANNOT CREATE INSTANCE OF A MIXIN, THEY ARE MEANT TO BE USED WITH CLASSEs.
// THEY ARE MEANT TO ADD FUNCTIONALITY TO CLASSES
// SHARING OF FUNCTIONALITY ACROSS MULTIPLE CLASSES.

// if you have getter in the class that has that mixin, then it donot need to exactly have get property in
// class, it can do so by declaring it to final and returning in constructor.

// MIXIN AS DATA TYPE IN FUNCTION CALL.

void passMixin(BothPlaces obj) {
  print(obj.bothPlaces);
}

mixin FirstPlace {
  String get firstPlace; // this is a
}
mixin LastPlace {
  String
      get lastPlace; // this says whoever implements me has to have this property right?
}

mixin BothPlaces on FirstPlace, LastPlace {
  String get bothPlaces => '$firstPlace $lastPlace';
}

class Person with FirstPlace, LastPlace, BothPlaces {
  @override
  String firstPlace;

  @override
  String lastPlace;

  Person(this.firstPlace, this.lastPlace);
}
