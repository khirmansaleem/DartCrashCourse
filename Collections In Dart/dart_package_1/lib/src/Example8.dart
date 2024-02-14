// =========================== UNMODIFIABLE MAP VIEWS ================================================
import 'package:collection/collection.dart';

void main() {
  var login = 'Manager';
  var nav = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav);
  var info = {'name': 'khirman', 'age': '24', 'number': 0};
  final readOnlyMap = UnmodifiableMapView(info);
  try {
    readOnlyMap.putIfAbsent('name2', () => 'adnan');
  } catch (e) {
    print("Cannot add content to read only map");
  }
}
