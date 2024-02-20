// =================================  TYPE MATCHING =================================
//=================================================================================================================
void main() {
  print(checkDatatypesSame(1.1, 120));
  print(checkDatatypesSame(1.1, 1.4));
  print(checkDatatypesSame('good', 120));
}

// pass two values of any data type and return true if those data types are same, otherwise return false
// datatype of a variable can be accessed by using runtimeType property
// GENERIC TYPES CAN BE USED AS PLACE HOLDER FOR ANY DATA TYPE THAT WILL BE PASSED FROM CALLER SIDE TO FUNCTION
// <T> --> you are telling the function that you expect generic data type
bool checkDatatypesSame<T>(T a, T b) {
  // or we can do <L,R> (L a, L b)=> if(L==R) return true
  if (a.runtimeType == b.runtimeType) {
    return true;
  } else {
    return false;
  }
}
