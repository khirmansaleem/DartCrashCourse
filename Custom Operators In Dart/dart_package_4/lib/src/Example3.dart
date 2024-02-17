// ======================================== ADDITION OF TWO OPTIONAL INTEGERS================================

void main() {
  addNumbers(2, 4);

  print(addNumbers(2, 3));
  print(addNumbers(null, 3));
  print(addNumbers(2, null));
  print(addNumbers(null, null));
}

int addNumbers(int? a, int? b) {
  return a + b;
}

//=========================================================================================
// operator that operates between two integers, each one of the integers could be null
// inside extension, promoting "this" keyword to a non null value using shadow variable.
// a+b
// case #1 if a is not null and b is null, return a
// case #2 if a is null and b is not null, return b
// case #3 if a is null and b is null , return 0
// case#4 if a is not null and b is not null, return sum
//=============================================================================================
extension AddNullable<T extends num> on T? {
  T operator +(T? other) {
    final thisShadow = this; // promoting to non null using shadow variable
    if (this != null && other == null) {
      return this as T;
    } else if (this == null && other != null) {
      return other;
    } else if (thisShadow != null && other != null) {
      return thisShadow + other as T;
    } else {
      return 0 as T;
    }
  }
}
