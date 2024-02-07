// INITIALIZING LATE FINAL VARIABLES
void main(List<String> args) {
// Late final variable allow initialization only once not more than that
  late final bool isTeenager;
  var age = 13;
  if (age < 20) {
    isTeenager = true;
    print(isTeenager);
  } else if (age > 20) {
    isTeenager = false;
    print(isTeenager);
  }
// this will handle exception and catch block will be execute becoz the late  final variable
// isTeenager cannot be initialized more than once.
  try {
    isTeenager = true;
  } catch (e) {
    print(e);
  }
}
