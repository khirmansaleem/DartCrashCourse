void main(List<String> args) {
  // Prints the result of getFullName when both firstName and lastName are null
  print(getFullName(null, null));

  // Prints the result of getFullName with firstName as 'John' and lastName as null
  print(getFullName('John', null));

  // Prints the result of getFullName with firstName as null and lastName as 'Doe'
  print(getFullName(null, 'Doe'));

  // Prints the result of getFullName with both firstName as 'John' and lastName as 'Doe'
  print(getFullName('John', 'Doe'));
}

// Defines a function getFullName that takes two optional string parameters (firstName and lastName)
String getFullName(
  String? firstName,
  String? lastName,
) =>
    // Calls withAll function with a list of firstName and lastName, and a callback function
    withAll(
      [firstName, lastName],
      (names) => names
          .join(' '), // Callback function that joins the names with a space
    ) ??
    'Empty'; // Returns 'Empty' if withAll returns null (when any name is null)
// Defines a generic function withAll that takes a list of optional values and a callback function.
// The generic type T allows this function to be used with any data type.
T? withAll<T>(
  List<T?>
      optionals, // Takes a list of optional values (T?). The values can be of any type T and can be null.
  T Function(List<T>)
      callback, // Takes a callback function that will be used if none of the values are null.
) =>
    // Checks if any element in the 'optionals' list is null.
    optionals.any((e) => e == null)
        ? null // If any element is null, the function returns null.
        : callback(optionals.cast<
            T>()); // If all elements are non-null, cast the list to non-nullable and call the callback function with it.
