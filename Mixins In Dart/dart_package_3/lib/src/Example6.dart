import 'dart:mirrors';

//======================MIXINS AND REFLECTIONS========================================
// mixins can bring functionality to the classes without having classes to override anything
// classes can just use those functionalities.
void main() {
  final person1 = Person(name: 'khirman', age: 23);
  print(person1);
}
// a mixin 'hasDescription' is created which looks at the properties of the class
// mixin will implement toString for the class using reflections and will describe each property
// of the class.
// it will explain each proprty in the class.
// Reflections work using a mirror system, the key to dart is function reflect,
// reflect function will give you an object of type instance mirror,
// using instance mirror you can get name of the type you are reflecting upon
// you can also get type declarations, and these declarations will give you variables, list of function on
// we will look at type variables in this example that class implements.
// variables in dart are explained in a class called variables mirrors.
// using variable mirror we will get name and data type of that variable

// MIXIN BRINGING 'TOSTRING' FUNCTIONALITY TO THE CLASS USING RELFECTIONS FOR VARIABLE DESCRIPTIONS
// WITHOUT NEEDING THE CLASS TO  IMPLEMENT ANYTHING RELATED TO THIS, IT JUST HAS TO INCLUDE THAT
// MIXIN
mixin hasDescription {
  @override
  String toString() {
    // to produce a string for this function
    final reflection = reflect(this);
    final thisType = MirrorSystem.getName(reflection.type.simpleName);
    // to get the list of all the variables that are available in the type we implemented on
    final variables =
        reflection.type.declarations.values.whereType<VariableMirror>();
    // on these list of variable mirrors, we want to create list of properties
    final properties = <String, dynamic>{
      for (final field in variables)
        field.asKey: reflection
            .getField(field.simpleName)
            .reflectee // value is returning from reflectee, returning value of the property
    }.toString();

    return '$thisType ::  $properties';
  }
}

extension AsKey on VariableMirror {
  // variable mirror simply contains name and data type of the variable
  String get asKey {
    final fieldName = MirrorSystem.getName(simpleName);
    final fieldType = MirrorSystem.getName(type.simpleName);
    return '$fieldName : $fieldType'; // giving key for the map
    // this will return firstname : string
  }
}

class Person with hasDescription {
  final String name;
  final int age;
  Person({required this.name, required this.age});
}
