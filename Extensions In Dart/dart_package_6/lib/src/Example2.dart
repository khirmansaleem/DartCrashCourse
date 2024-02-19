//================================ SUM OF ITERABLEs ===================================================
// EXTENSION ON ITERABLE OF ANY NUMBER
// NUM IS THE ABSTRACT CLASS WHICH BOTH INT AND DOUBLE CONFORMS TO
//=====================================================================================================
void main() {
  Iterable<int> a = [1, 2, 4, 5];
  print(a.sumIterables);
}

// it will return the T data type which we are passing
// and we are specifying that it will be of type num
extension SumIterables<T extends num> on Iterable<T> {
  T get sumIterables => fold(0 as T, (T a, T b) => a + b as T);
}
