void main(List<String> args) {
  // flatmap drill down to an optional variable, grab it's value and map it to completely other data type
  // or a different value of same type
  // condition is that optional should not be null , if it is null then flatmap does not do anything
  // just returns null
  // UNWRAPPING AND MAPPING OF THE OPTIONAL VALUE

  String? firstName = "Khirman";
  String? lastName = 'Saleem';
  // result is the optional string as first name, lastname or both could be null
  // if first name is null then the block inside first name will not be called and just return first name only
  //
  final bla = firstName.flatMap(
        (f) => lastName.flatMap(
          (l) => 4.5,
        ),
      ) ??
      'first name or lastname or both are null';
  print(bla);
}

// T will a String if we are working with optionals String.
// T defines the datatype of optionals that you are working with
extension FlatMap<T> on T? {
  // we return any value optionally and call our function flatmap
// 'R' nullable return type
  R? flatMap<R>(
    R? Function(T)
        callback, // give value as input then return some value as callback of type "R"
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}
