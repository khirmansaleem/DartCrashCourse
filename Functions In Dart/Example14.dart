// THE RETURN KEYWORD

void main(List<String> args) {
  print(add());
  print(add(4));
}

int add([int a = 34, int b = 44]) {
  return a + b;
}
