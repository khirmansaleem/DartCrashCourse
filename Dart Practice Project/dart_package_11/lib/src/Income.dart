class Income {
  // they will be initialized based on condition in the setter so they are used as late here.
  // there is a contract that they will be initialized later
  late int _fullTimeIncome;
  late int _partTimeIncome;
  late int _otherSources;
  Income(int fullTimeIncome, int partTimeIncome, int otherSources) {
    this.fullTimeIncome =
        fullTimeIncome; // this will allow to check the value in setter
    // based on condition in setter, value will be either assigned or not.
    this.partTimeIncome = partTimeIncome;
    this.otherSources = otherSources;
  }
  // first sets the value based on condition and then gets it using get method here.
  // now employ your getter and setter concepts here :
  int get fullTimeIncome => _fullTimeIncome;
  int get partTimeIncome => _partTimeIncome;
  int get otherSources => _otherSources;
  int get totalIncome => fullTimeIncome + partTimeIncome + otherSources;
// setter can take only one positional argument
  set fullTimeIncome(int value) {
    if (value > 0) {
      _fullTimeIncome = value;
    } else {
      _fullTimeIncome = 0;
    }
  }

  set partTimeIncome(int value) {
    if (value > 0) {
      _partTimeIncome = value;
    } else {
      _partTimeIncome = 0;
    }
  }

  set otherSources(int value) {
    if (value > 0) {
      _otherSources = value;
    } else {
      _otherSources = 0;
    }
  }

  @override
  String toString() =>
      'Full-time Income is : $_fullTimeIncome , Part-time Income is : $_partTimeIncome and Other Sources are: $_otherSources ,:: Total Income calculated is $totalIncome';
}
