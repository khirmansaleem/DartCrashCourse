// CLASSIC FOR LOOP

void main() {
  const newList = ['foo', 'bar', 'baz', 'new', 'town'];
  print('=========================================');
  for (var i = 0; i < newList.length; i++) {
    print(newList[i]);
  }
  print('=========================================');
  for (var i = newList.length - 1; i >= 0; i--) {
    print(newList[i]);
  }
  print('=========================================');
  for (var i = 0; i < newList.length; i += 2) {
    print(newList[i]);
  }
}
