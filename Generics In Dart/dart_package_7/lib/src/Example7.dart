// ======================GENERIC CLASSES WITH GENERIC EXTENSIONS===================================
// use generic if they make your code lot more understandable and reduce the code .

void main() {
  final tuple = Tuple(23, 'khirman'); // tuple of type<int,string>
  print(tuple);
  print(tuple.swap());
  final tuple2 = Tuple(23, 40);
  print(tuple2.sum());
}
// creating generic class and then creating generic extensions on that class.
// CREATING OUR OWN TUPLES IN DART
// WE WANT TO ADD EXTENSION TO THE TUPLE CLASS, SO IT WILL SWAP THE VALUES IN THE TUPLE.

// first of all creating a tuple class with generic types <L R>
// both values in the tuple can be of any type it will accept them
class Tuple<L, R> {
  final L left;
  final R right;
  Tuple(this.left, this.right);

  @override
  String toString() => ' A tuple of :: ($left , $right)';
}

// now creating extensions to swap the values of tuples and sum those values
// if they are of same type
extension OnTuples<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(right, left);
}

extension Ontuples<L extends num, R extends num> on Tuple<L, R> {
  T sum<T>() {
    return left + right as T;
  }
}
