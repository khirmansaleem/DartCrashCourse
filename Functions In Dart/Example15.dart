// FUNCTIONS AS FIRST CLASS CITIZENS
// First Class Functions : Functions in dart can be passed to other functions.
// so the function is describle as datatype so we can pass it to other function
void main(List<String> args) {
  print(add());
  ;
  print(performOperation(3, 4, add));
}

// function can be passed as parameter to other function and it's return value will be function call
// of that function passed as parameter to the function
int performOperation(int a, int b, int operation(int a, int b)) =>
    operation(a, b);

// arrow return functions that do not need to write explicity 'return' in order to return any value
// we can use arrow for returning value from the function
int add([int a = 4, int b = 45]) => a + b; // this will return a+b
