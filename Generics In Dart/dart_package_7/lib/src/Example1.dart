//means classes and data types can be made generic by applying generic types to them
//generics is basically  a concept in programming that apply generic types to classes,
// functions , and allow them to accept any data type.
//================================> GENERIC INTEGER OR DOUBLE <========================================
// generics allow us to play with data types.
// flexible and usable code let you work with any data type
//  generics in swift ui, flutter
// E--> generic element
// T --> Generic Type
// if we create a function that either returns double or integer,
// then we can return num but while calling , it will return type as num without specifying double or int
// we explicitly have to use ' as double or as int ' for any one of them while calling
// other way we can use is to use generic type T as the return type, if it return integer it will
// consider T as int or otherwise double accprding to data type passed to the calling side.
// we can create a reusable code, we do not need to create different code for different data types,
// one can work for all
//=======================================================================================================

void main() {
  // data type is passed from the caller side to the function
  int a = detectIntegerDoubleString();
  //String b = detectIntegerDoubleString();
  //print(b); throww exception as string is not subtype of num data type.
  print(a);
}

T detectIntegerDoubleString<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.1 as T;
    default:
      return 'none of them' as T;
  }
}
