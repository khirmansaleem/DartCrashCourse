// ============================CONSTRAINED GENERIC TYPE DEFINITION ====================================

void main() {
  // create a map with key :"string " and values "instances of classes"
  var map1 = {'mom': Person(), 'dad': Person()};
  var map2 = {'Eagle': Eagle(), 'Sister': Person()};
  final values = [map1, map2]; //put those maps inside a list
  iterateMap(values);
}

// now do the type definition of the map that is to be passed to the iterable
// now this map can be passed to the iterable
// in this type definition we have constrained that key should be string
// and value should extends the mixin CanEat
typedef TypeMap<T extends CanEat> = Map<String, T>;

void iterateMap(Iterable<TypeMap> values) {
  for (final map in values) {
    // iterable contains 2 maps inside it, iterate through each map one by one
    // for one complete iterations in the map 1 , outer loop will be executed only once.
    for (final mapEntries in map.entries) {
      print('${mapEntries.key} : ${mapEntries.value.eating()}');
    }
  }
}

// TYPE DEFINITIONS THAT ARE GENERIC AS WELL.
// FUNCTION THAT TAKES IN THE LIST OF MAP OF INSTANCES AND CALL THE BREATH FUNCTION ON THAT.
// TYPE DEFTINITION CAN BE GENERIC
// type definition of a map containing string as key and value as instance of class.

mixin CanEat {
  String eating();
}

class Person with CanEat {
  const Person();

  @override
  String eating() {
    return 'is eating';
  }
}

class Eagle with CanEat {
  const Eagle();

  @override
  String eating() {
    return 'is eating';
  }
}
