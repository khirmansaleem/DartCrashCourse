// =================LIMITING MIXINS TO DATA TYPES=================================

void main() {
  final teacher = CsTeacher();
  print(teacher.toString());
  final teacher1 = DsaTeacher();
  teacher1.teachersQuality();
  final teacher2 = AiTeacher();
  teacher2.teachersQuality();
  final teacher3 = DatabaseTeacher();
  teacher3.teachersQuality();
}

// YOU CAN ALSO LIMIT MIXINS TO SPECIFIC DATA TYPES
// MIXIN IS RUNNNG ON OTHER MIXINS OR IT IS RUNNING ON A CLASS.
// IT WILL BE AVAILABLE using that class only.

// Mixin "ON" other class means that mixin will be available on all the types that conforms the class
//CsTeacher if those classes let it get in using 'with'.

class CsTeacher {}
// you access the mixins in all the classes that extends "CsTeacher" otherwise not

mixin Teachers on CsTeacher {
  void teachersQuality() => print(" $runtimeType is lazy");
}

class DsaTeacher extends CsTeacher with Teachers {}

class DatabaseTeacher extends CsTeacher with Teachers {}

class AiTeacher extends CsTeacher with Teachers {}
//class DaTeacher  with Teachers {} --> it cant be done because that mixin is available only on 'CsTeacher'
// and all the subclasses will be able to access that mixin that, other than that not
