// ------------------------------RETURNING FUNCTIONS FROM FUNCTIONS---------------------------------------------
void main(List<String> args) {
  print(doSomething(3, 8)());
}

// RETURN VALUE OF A FUNCTION IS ANOTHER FUNCTION
Function() doSomething(int a, int b) => () => a + b;
