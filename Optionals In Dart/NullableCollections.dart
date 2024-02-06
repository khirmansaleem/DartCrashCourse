void main(List<String> args) {
  // a list can be null plus it's content can be null also
  List<String>? a = null; // the whole list can be treated as null
  List<String?> b = [null]; // here it's content is treated as null
  //we can combine both of them
  List<String?>? c = null;
  //c = [null, "a"];
  // "?." access the property only if value if not null otherwise skip property and return null
  a?.add("foor");
  print(
      a); // the list itself is null so it will skip the add operation and returns null

  // to get the first variable from the list:
  final fi = a
      ?.first; // implementation of this first internally not returning nullable value : dart implement as it always
  //contain some value
  print(fi);

  // create another list:
  //List<String> names2 = [];
  //final bla = names2.first; // dart returns it as string ,
  //print(bla);
  // fact is that dart is not storing the first variable as nullable , it is saying that first variable is always
  // containing some value, so when we do not use optional operator, it will not recognize null and crash the code.
  //----------------------------------------
  // once you have initialized the list with a valid list , which is initially empty:
  a = [];
  // now need not to use optional operator for adding elements to the list
  a.add("aadd");
  print(a);
}
