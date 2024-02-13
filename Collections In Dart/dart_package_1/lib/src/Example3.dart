// HASH CODE AND EQUALITY TO REMOVE DUPLICACY FROM SETS
// ===========================HOW SETS WORK INTERNALLY========================================================
// and cases sets allow duplicate values to be contained in them
// if name and age have same values regardless of the class where they are in, their hash codes will be same
// so equality will distinguish between them
// hashcodes basically narrow down the search for equality
// only need to check the equality among elements share the same hash code
// than to compare new element with every element in the set
// if we want to add an element to the set, hashcode help in narrow down the search to place the element in
//the correct place in the set.
void main() {
  final person1 = Person('khirman', 24);
  final person2 = Person('khirman', 24);
  final person3 = Person('khirman', 24);
  print(person1.hashCode); //21421832
  print(person2.hashCode); //21421832
  print(person3.hashCode); //21421832
  // now just checking by making sets
  final person = {
    person1,
    person3
  }; // as set contains duplicate values and cannot recognize that both instances
  // contains duplicate values, so we need to implement hash and equality to remove duplicacy
  print(person);
  // we can just check two objects if they are equal or not
  bool identicality = identical(person1, person2);
  print(identicality); // this will return false
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  // need toString() method to get string that contains information that you find relevant
  @override
  String toString() =>
      'name : $name , age : $age'; // return a string containing name and age

  // Implement hash code functionality
  @override
  int get hashCode => Object.hash(name, age);

  // implement the equality functionality:
  // ensures uniqueness in the set
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
  // both objects are identical or if their contents are equal
}
