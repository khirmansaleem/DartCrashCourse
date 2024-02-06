void main(List<String> args) {
  int? a = 20;
  a = null;
  if (a == null) {
    print("nullable value");
  } else {
    print("not nullable value");
  }
}
