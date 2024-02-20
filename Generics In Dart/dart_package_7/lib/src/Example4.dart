// ======================> UNCONSTRAINED GENERIC TYPE DEFINITIONS <=========================

void main() {
  final bla = {'hello': 'bubloo'};
  bla.entries;
  print(bla.entries); // Iterable<MapEntry<K, V>> get entries
  // now use that defined type here
  final one = MapEntries(1, 3);
  print(one);
}

// creating some sort of data type that is key and value
// map entry is key and value pair within map
// type definition of map entry
// here is completely unconstrained type definition with  generic types.
// when we will use that we can pass any type of key :value to this type.
typedef MapEntries<K, V> = MapEntry<K, V>;
