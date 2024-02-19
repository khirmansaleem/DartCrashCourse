// ====================================== EXTENDING STRING ==============================================
// if we add extensions to the top of existing class, we can bring new functionality to the existing
// class.
// add functionality to existing classes
// when is the right time to create extensions on existing type and when is not right time
// to do that.
// ==> "this" keyword in extension refers to the instance of the value it is operating on

// ==> extension on String that reverse that String for us
//============================================================================================================
void main() {
  print('khirman'.reversedString);
  print(4.timesInt(4));
}

// we have add this functionality using extension--> by default dart do not provide reverse string functionality
extension ReverseString on String {
  // split into each char --> 'k' 'h' 'i' 'r' 'm' 'a' 'n'
  // reversed the array of chars--> n a m r i k h
  // and join them to form string namrikh and return this string
  String get reversedString => split('').reversed.join();
}

extension TimesInt on int {
  static int a = 0;

  int timesInt(int times) {
    for (int i = 0; i < times; i++) {
      a += this * this;
    }
    return (a);
  }
}
