// =====================================> RANGE ON INT <=================================================

// dart lacks the possibility of creating ranges
// ability to create ranges
// we want to create ranges of integers
//================================================================================
// 1.to(10)==> return iterable containing values from 1 to 10.
// 1.to(10, inclusive: false) => returns iterable from 1 to 9 and not including the last '10'

void main() {
  print(1.to(10, true));
  print(1.to(10, false));
  print(20.to(100, true).toList());
  print(10.to(2, true));
  print(20.to(5, false));
}

extension RangeGenerator on int {
  Iterable<int> to(int end, bool inclusive) sync* {
    if (inclusive == true && this < end) {
      for (int i = this; i <= end; i++) {
        yield i;
      }
    } else if (inclusive == false && this < end) {
      for (int i = this; i < end; i++) {
        yield i;
      }
    } else if (inclusive == true && this > end) {
      for (int i = this; i >= end; i--) {
        yield i;
      }
    } else if (inclusive == false && this > end) {
      for (int i = this; i > end; i--) {
        yield i;
      }
    }
  }
}
