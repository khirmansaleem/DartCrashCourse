// -------------------Lazy initialization and errors---------------------------
// where we should use the late keyword, WHEN we can use it and where we should not use it

late String
    name; // this variable will have a value for sure, but not assigning value right now
// you can say a contract between developer and dart
void main(List<String> args) {
  // late variables are initialized when they are first used.
  // when they are created they are not initialized.
  //try {
  // you can use try and catch for stopping your application from crashing and
  // displaying the error using catch.
  //  print(name);
  // } catch (e) {
//    print(e);
// now example of assigning value to late variable and printing it on console.
  name = 'Khirman';
  print(name);
}
