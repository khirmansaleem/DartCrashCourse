// =========================== FINDING AND MAPPING KEYS AND VALUES ON MAPS ===================================
void main() {
  Map<String, dynamic>? map = {'name': 'khirman', 'age': 23};
  final String? changeName = map.findValue('name', (String name) {
    name = 'adnan';
    map['name'] = name;
    return name;
  });
  // change the data type of the value
  final String? modifyAge = map.findValue('age', (int age) {
    String age2 = age.toString();
    map['age'] = age2;
    return age2;
  });
  print(modifyAge);
  print(changeName);

  print(map);
}

// IN THE MAP FIND THE PARTICULAR KEY AND CONVERT THE EXISTING VALUE OF MAP WITH ANOTHER VALUE
// GIVEN ANY MAP, FIRST FIND THE KEY, ACCESS THE VALUE OF THE KEY AND CONVERT THE VALUE TO
// ANOTHER VALUE BY APPLYING FUNCTION. AND INSERING RESULTING VALUE AT THAT PLACE

extension FindValue<K, V, R> on Map<K, V> {
  // R? --> means may return a null value
  R? findValue<T>(K key, R? Function(T value) cast) {
    final value = this[key]; // assigning value to the key
    if (key != null && value is T) {
      return cast(value);
    } else {
      return null;
    }
  }
}
