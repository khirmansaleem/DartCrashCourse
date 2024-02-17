// ====================== OPERATORS ON CLASS DEFINITIONS =======================================
// CUSTOM OPERATORS NEED NOT TO BE NECESSARILY CREATED ON EXTENSIONS, THEY CAN BE CREATED ON ORIGINAL
// CLASS
void main() {
  final student1 = Student(age: 25);
  final student2 = student1.age + 1;
  print(student2);
}

class Student {
  final int age;
  const Student({required this.age});

  @override
  String toString() => 'The age of Student is : $age';

  Student operator +(int age) =>
      Student(age: age + 1); // return a new instance of Student class.
  // in which age will be incremented by 1
}
