//=====================================> ENUMERATIONS <====================================
void main() {
  // Enumerations allows you to create similar objects in one structure.
// for enums and classes we use pascal case TypeGood -> this should be enum name.
// VALUES inside enum class are objects of type enum.
  final woof = AnimalKingdom(AnimalType.dog, 'DOG');
  switch (woof.type) {
    case AnimalType.snake:
      print("this is a snake");
    case AnimalType.tiger:
      print("this is a tiger");
    case AnimalType.bear:
      print("this is a bear");
    case AnimalType.cat:
      print("this is a cat");
    case AnimalType.dog:
      print("this is a dog");
    case AnimalType.panda:
      print("this is a panda");
    default:
      print("not in the cases mentioned");
  }
}

enum AnimalType { snake, tiger, bear, cat, dog, panda }

class AnimalKingdom {
  final AnimalType type; // instance variable of type enum
  final String name;
  AnimalKingdom(this.type, this.name);
}
