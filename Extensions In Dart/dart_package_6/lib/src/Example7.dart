//=========================== EXTENDING FUNCTIONS ==============================

// MIX EXTENSIONS WITH TYPE DEFINITION
// call the 2 parameter functions with random values.
// you can define type definition of the functions , and then extension can work on that
import 'dart:math' show Random;

void main() {
  print(addNumbers.passRandParameters());
}

int addNumbers(int a, int b) => a + b;
int subNumber(int a, int b) => a - b;

typedef IntFunction = int Function(int, int);

extension PassRandomParameters on IntFunction {
  int passRandParameters() {
    int rnd1 = Random().nextInt(100);
    int rnd2 = Random().nextInt(100);
    return call(rnd1, rnd2);
  }
}
