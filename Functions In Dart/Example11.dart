//Positional Parameters
// they are passed in order and dont have names associated with them in the call side
// they always required and cannot have default values
void main(List<String> args) {
  personDescribe('KHIRMAN', 'detail information about you');
  personDescribe(null, null);
}

void personDescribe(String? name, String? dexcription) {
  print('Hello, $name ,here is $dexcription');
}
