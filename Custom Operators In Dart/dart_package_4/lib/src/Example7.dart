// ================================== CROSS DATA TYPE OPERATORS ============================================
void main() {
  final member1 = FamilyMembers(name: 'khirman');
  final member2 = Pet(name: 'cat');
  final member4 = Pet(name: 'Dog');
  final member3 = FamilyMembers(name: 'adnan');
  final family1 = member1 + member3;
  print(family1);
  final family2 = member2 & member4;
  print(family2);
  final family = family1 ^ family2;
  print(family);
}
// ADDING MEMBERS TO THE FAMILY
// ADDING PET TO THE FAMILY
// ADDING ONE FAMILY TO OTHER FAMILY
// creating extensions on existing classes in order to add operators to them

class FamilyMembers {
  final String name;
  const FamilyMembers({required this.name});
  @override
  String toString() => 'Name : $name';
}

class Family {
  final List<FamilyMembers> members;
  final List<Pet> petMembers;
  const Family({required this.members, required this.petMembers});
  @override
  String toString() => 'Members : $members ,Pet Members : $petMembers ';
}

class Pet {
  final String name;
  const Pet({required this.name});
  @override
  String toString() => 'Name : $name';
}

extension GetFamily on FamilyMembers {
  // operator operates on family members, when + operator is used between them
  // add them to the Family class list
  // operator + --> tells that it is infix operator between operand ....mom + dad
  // adds mom and dad to the members list of Family class
  Family operator +(FamilyMembers other) =>
      Family(members: [this, other], petMembers: []);
}

extension GetPet on Pet {
  Family operator &(Pet other) =>
      Family(members: [], petMembers: [this, other]);
}

extension WithFamily on Family {
  Family operator ^(Family other) => Family(
      members: [...members, ...other.members],
      petMembers: [...petMembers, ...other.petMembers]);
}
