// ===================================CUSTOM OPERATORS ON MAP=====================================
// adding merging functionality between 2 maps,
// for this functionality you can also use mergeMaps from the collection package.
// map1 + map2
// map1- map2
// map*(any integer)
void main() {
  // First map with String keys and int values
  var map1 = {
    'apple': 2,
    'mango': 5, // Duplicate value
  };

  var map2 = {
    'grape': 3,
    'mango': 5, // Duplicate key and value
    'peach': 2,
  };
  print(map1 + map2);
  print(map1 - map2);
  print(map1 * 2);
}

extension MapOperation<K, V> on Map<K, V> {
  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..removeWhere((key, value) {
        // this is return value given to removeWhere which is to be removed
        return other.containsKey(key) && other[key] == value;
        // if same key is in other map and value is also equal
      });
  }

  // returning map by spreading the values of both maps in one map
  Map<K, V> operator +(Map<K, V> other) => {...this, ...other};

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (int i = 0; i < times; i++) {
      yield this;
    }
  }
}
