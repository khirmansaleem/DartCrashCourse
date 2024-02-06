void main(List<String> args) {
  // Grab default value out of any optional
  // this extension will return either the string itself and if it is null then it will
  // return the default value of that optional variable
  print(fullname(null, null));
}

String fullname(
  String? firstname,
  String? lastname,
) =>
    '${firstname.orDefault} ${lastname.orDefault}';

// extensions acts as ads on or plugins to the actuall code
// they add functionality to the code without effecting other part of the code
// this can be used when you want to add functionality to existing classes without need modifying them
extension DefaultValues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    } else {
      switch (T) {
        case int:
          return 0 as T;
        case double:
          return 0.0 as T;
        case String:
          return 'X' as T;
        case bool:
          return false as T;
        default:
          throw Exception("no default value found");
      }
    }
  }
}
