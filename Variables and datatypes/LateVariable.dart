void main(List<String> args) {
  // here late variable will wait for it's usage: this will keep in mind the function to be called
  late final myvalue = getnumber();
  print("i love this number");
  print(
      myvalue); // actually function will be called when you use the late variable
}

int getnumber() {
  print("The number is given below");
  return 10;
}
