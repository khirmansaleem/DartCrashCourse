// ================================= FAMILY MEMBER OPERATORS ====================================================
// Custom operators blend in concept of operators and extensions at the same time.
// custom operators are like functions
// custom operators is the ability for you to add functionality to dart so that
// existing operators can work in the way you want them to work.
// they get inputs and produce outputs
// like if there are 2 family members from the family member class can be given as input to the custom operator
// then the operator takes them as input and produces instance of family class as the output
// add them to family in short

// custom "+" will be used between two family members and them to family

void main() {
  final mom = FamilyMembers(name: 'MOM');
  final dad = FamilyMembers(name: 'DAD');
  // final sister = FamilyMembers(name: 'SISTER');
  final family =
      mom + dad; // it add mom and dad to the family class members list
  print(family); // dart understand it of type family
  print(family.members); // we can see mom and dad are added to the list
}

class FamilyMembers {
  final String name;
  const FamilyMembers({required this.name});
  @override
  String toString() => 'Name : $name';
}

extension GetFamily on FamilyMembers {
  // operator operates on family members, when + operator is used between them
  // add them to the Family class list
  // operator + --> tells that it is infix operator between operand ....mom + dad
  // adds mom and dad to the members list of Family class
  Family operator +(FamilyMembers other) => Family([this, other]);
}

class Family {
  final List<FamilyMembers> members;
  const Family(this.members);
  @override
  String toString() => 'Members : $members';
}
