// =================== GENERIC MIXINS AND SPECIALIZED MIXINS TYPE DEFINITIONS=========================

void main() {
  final class1 = Class1();
  final class2 = Class2();
  print(class1.marks); //double
  print(class2.marks); // int
}
// can also create generic mixins and specialized those mixins with type definitions

// create a mixin with generic type of height h
mixin FinalMarks<M extends num> {
  M get marks;
}
// now class A will accept the marks in double and class B will accept in INT
// so we need to have 2 type definitions of marks
typedef DoubleMarks = FinalMarks<double>;
typedef IntMarks = FinalMarks<int>;

// now these 2 type def are containing two mixins , first one will take int type
// other will take double

class Class1 with DoubleMarks {
  @override
  get marks => 23.45;
}

class Class2 with IntMarks {
  @override
  int get marks => 100;
}
