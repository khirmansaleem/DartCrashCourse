// REQUIRED NAMED PARAMETERS

void main(List<String> args) {
// named parameters in dart can also be required
// required parameter using required keyword, you always have to pass value for this paramter
  doSomething(name: 'KHIRMAN');
}

void doSomething({required String name}) {
  print(name);
}
