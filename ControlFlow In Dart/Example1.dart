// CONtrol flow : any statement in the programming language that controls the flow of your application

// ===============================  IF / ELSE =====================================================
// if/else allow the flow of the application to be changed based on some conditions
// if usually evalutate true or false
void main() {
  String yourName = 'Rahma';
  String myName = 'Khirman';

  if (yourName == myName) {
    print('Your name and My name are equal');
  } else if (yourName == 'Rahma' && myName == 'Khirman') {
    print('My name is $myName and Your name is $yourName');
  } else {
    print('Both names are not present in the database');
  }
}
