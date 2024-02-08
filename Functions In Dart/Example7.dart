// NON-OPTIONAL NAMED PARAMETERS WITH DEFAULT VALUES
void main(List<String> args) {
// named parameters don't have to be nullable if they have default values
// simply the arguements passed will replace the default named parameterss values
  displyName();
  displyName(name: 'ADNAN');
}

void displyName({String name = 'Khirman'}) {
  print(name);
}
