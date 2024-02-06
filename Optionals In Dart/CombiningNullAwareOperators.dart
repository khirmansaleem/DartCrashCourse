void main(List<String> args) {
  String? lastname = null;

  void lastnme() {
    lastname = "foo";
  }

  lastnme();
  // 2 ways of doing the same thing
  if (lastname?.contains('foo') ?? false) {
    print("yes it contains ");
  }
  if (lastname?.contains('foo') == true) {
    print("yes it contains ");
  }
}
