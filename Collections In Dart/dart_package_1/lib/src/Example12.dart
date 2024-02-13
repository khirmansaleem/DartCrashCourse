// =======================SPREAD OPERATOR WITH COLLECTIONS ===========================

void main() {
  final names1 = ['foo1', 'bar1', 'baz1'];
  final names2 = ['foo2', 'bar2', 'baz2'];
  var names = names1; // now both are pointing to same memory location
  // by assigning names to names1 not copy contents, it is assigning them to same memory location
  // modifying the content of one will automatically modify the content of other one
  names.addAll(names2);
  // names and names1 contains the same content
  print(names);
  print(names1);
  print(names2);
  // above was the wrong way of combinng the contents of names1 and names2 and add them to names
  //============Rght way =========================
  print("============================");
  addToArrayRight();
  // DEMONSTRATING WRONG AND RIGHT WAY OF ADDING NEW CONTENTS TO A CONSTANT MAP
  wrongWayMap();
  rightgWayMap();
}

void addToArrayRight() {
  final names1 = ['foo1', 'bar1', 'baz1'];
  final names2 = ['foo2', 'bar2', 'baz2'];
  var names = [
    ...names1,
    ...names2
  ]; // now in this case, it is copying the contents using spread operator
  print(names);
  print(names1);
  print(names2);
}
// using spread operator we spread the contents of the lists and use it somewhere else if needed

// we can also observe both the right and wrong ways of adding contents to a constant map

void wrongWayMap() {
  const info = {'name': 'khirman', 'age': 24};
  try {
    info.addAll({'weight': 80});
  } catch (e) {
    print(e);
  }
}

void rightgWayMap() {
  const info = {'name': 'khirman', 'age': 24};
  final newMap = {
    ...info,
    'weight': 80
  }; // create a new map and spreads the contents of info and add weight there
  print('${newMap.keys}   ${newMap.values}');
}
