class Expense {
  final int totalIncome;
  final List<ExpenseTypes> expenseTypes;
  final List<int> values;

  Expense(this.totalIncome, this.expenseTypes, this.values);

// mapping of  Expense Types to their respective values
  ExpenseMap mapExpensesValues() {
    ExpenseMap map = {};
    for (int i = 0; i < expenseTypes.length; i++) {
      // if particular expenseType value part of that enum then on
      if (expenseTypes[i].name.belongsToExpenseTypes) {
        map[expenseTypes[i]] = values[i];
      }
    }
    return map;
  }

  int calculateExpenses(int totalIncome, ExpenseMap map) {
    int sum = 0;
    map.forEach((key, value) {
      sum += value;
    });
    if (sum < totalIncome) {
      print('The expense is $sum and total income is $totalIncome');
    } else {
      print("The expense is $sum and total income is $totalIncome");
      print(
          "Your Expense is exceeding total income, careful!! otherwise you wll have to borrow money");
    }
    return sum;
  }
}

// type defintion of the map is done here
typedef ExpenseMap = Map<ExpenseTypes, int>;

// enum of type expenses is created.
enum ExpenseTypes {
  billExpenses,
  houseRent,
  groceryExpenses,
  petrolExpenses,
  otherExpenses
}

// can we create an extension that checks for us whether particular type belong to the enumeration

extension CheckEnumValue on String {
  bool get belongsToExpenseTypes =>
      ExpenseTypes.values.any((v) => v.name == this);
}
