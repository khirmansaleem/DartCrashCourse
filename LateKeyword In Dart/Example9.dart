// AVOIDING CONSTRUCTOR INITIALIZATION OF LATE VARIABLES
void main(List<String> args) {
  wrongfamilyImplementation w = wrongfamilyImplementation();

  rightfamilyImplementation r = rightfamilyImplementation();
  print(r.membrsCount);
}
// late instance variables should not be initialized in the constructor otherwise they wont be lazy

class wrongfamilyImplementation {
  late int membersCount;
  wrongfamilyImplementation() {
    membersCount =
        getCount(); // when instance of class is first created, this constructor will be called
    // and then this function will be called , this way late variable looses it's capability
    // by being used inside a constructor, it should be always used outside constructor
  }
  int getCount() {
    print("Getting count");
    return 20;
  }
}

class rightfamilyImplementation {
  late int membrsCount = getCount2(); // this is correct way

  int getCount2() {
    print("Getting count");
    return 20;
  }
}
