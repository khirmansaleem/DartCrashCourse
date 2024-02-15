//====================USE CASES OF ABSTRACT METHODS IN DART==================================

void main() {
  final circle = Circle(20);
  circle.calculateArea();
  print(circle.calculateArea());
}

abstract class Area {
// abstract method to calculate area
  double calculateArea();
}

class Circle implements Area {
  final int radius;
  const Circle(this.radius);
  @override
  double calculateArea() => 3.14 * radius * radius;
}
