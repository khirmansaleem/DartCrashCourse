//============================ ENUMERATIONS WITH MIXINS ===================================================

void main() {
  // using that enum, we can access the methods in the mixins and pass values to those methods
  final dance = DanceClass.adnan.checkForDance();
  final dance2 = DanceClass.khirman.checkForDance();
}

enum DanceClass with CanDance {
  ali(boolDance: true),
  ahmed(boolDance: true),
  adnan(boolDance: true),
  khirman(boolDance: false);

  @override
  final bool boolDance;

  const DanceClass({required this.boolDance});
}

mixin CanDance {
  bool get boolDance;
  void checkForDance() {
    if (boolDance) {
      print("yes you can dance");
    } else {
      print("you cannot dance");
    }
  }
}
