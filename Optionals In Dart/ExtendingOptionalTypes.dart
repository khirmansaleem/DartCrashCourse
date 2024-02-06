void main(List<String> args) {
  // you can call the function conditionally if the left side is null
  String? getname() {
    return "khirman";
  }

  String getname1() {
    return "Adnan";
  }

  final someName = getname();
  someName.describe();
}

// created describe extension on optional values or nullable values
extension Describe on Object? {
  void describe() {
    if (this == null) {
      print("null value");
    } else {
      print(
          '$runtimeType : $this'); // this provide description for nullable or optional variables using this
      // extension
    }
  }
}
