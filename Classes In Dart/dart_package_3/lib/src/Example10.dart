// ========================================== ABSTRACT CLASSES =================================================
void main() {
  final seniordeveloper = SeniorDevelopers();
  print(seniordeveloper);
  // by extending we are using the methods and properties of the developer class
  seniordeveloper.yearlySalary();
  seniordeveloper.quarterlySalary();
  print("=====================================");
  // now junior developer re implements the methods of abstract class developer
  final juniorDeveloper = JuniorDeveloper();
  print(juniorDeveloper);
  juniorDeveloper.quarterlySalary();
  juniorDeveloper.yearlySalary();
}
// blueprints of blueprints
// rules in the abstract class that other classes that uses that conforms that abstract class has to follow
// "extends" abstract class means all the methods and properties will be inherited to the subclass
// "implement" abstract class means re implementing all of  abstract class methods and properties
// as implements keyword suggest.
// by implementing abstract class , you can create new version of previous blueprint.

abstract class Developers {
  final int salary;
  abstract final int age;
  Developers(this.salary);

  void yearlySalary() {
    print(salary * 12);
  }

  void quarterlySalary() {
    print(salary * 6);
  }
}

class SeniorDevelopers extends Developers {
  SeniorDevelopers() : super(200000);

  @override
  String toString() =>
      ('the age of person is $age salary of $runtimeType is : $salary');

  @override
  int get age => 20;
}

class JuniorDeveloper implements Developers {
  @override
  int get salary {
    return 50000;
  }

  @override
  void quarterlySalary() {
    int newSalary = salary * 6;
    print("The quarterly salary of Junior developer is $newSalary");
  }

  @override
  void yearlySalary() {
    int newSalary = salary * 12;
    print("The yearly salary of Junior developer is $newSalary");
  }

  @override
  String toString() =>
      ('the age of person is $age and  salary of $runtimeType is : $salary');

  @override
  int get age => 30;
}
