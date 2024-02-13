import 'package:collection/collection.dart';

//============================= UNMODIFIABLE LIST VIEWS =============================================
void main() {
// for protecting lists from modifications , use unmodifiable lists
// to create read only list using dart collection package

  final names = ['nono', 'fofofo', 'newnoo', 'gogoog'];
  final readOnlyList = UnmodifiableListView(names);
  try {
    readOnlyList.add('kkk');
  } catch (e) {
    print(e); // this will exception on addiing an item to readOnlyList
  }
}
