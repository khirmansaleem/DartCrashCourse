import 'package:dart_package_11/src/Income.dart';
import 'package:dart_package_11/src/Expense.dart';
import 'package:dart_package_11/src/FinancialCalculations.dart';
import 'package:dart_package_11/src/Savings.dart';

void main() {
  // Attempt to create an instance with a negative fullTimeIncome
  var income = Income(-100, 50000, 300);
  var savings = Savings();
  double totalIncome = income.totalIncome.toDouble();
  var expense = Expense(totalIncome.toInt(), [
    ExpenseTypes.billExpenses,
    ExpenseTypes.groceryExpenses,
    ExpenseTypes.houseRent,
    ExpenseTypes.otherExpenses
  ], [
    10,
    20,
    30,
    50
  ]);
  print(expense.mapExpensesValues());
  int expenses = expense.calculateExpenses(
      totalIncome.toInt(), expense.mapExpensesValues());
  print('and'.belongsToExpenseTypes);
  print("==========================================================");
  double a = FinancialCalculations.calculateIncomeTax(totalIncome);
  print("The Total Income after deducting tax on it becomes: $a");
  double b = FinancialCalculations.calculateInterestRate(totalIncome);
  print("The Total Income after applying Interest rate is: $b");
  savings.calculateSavings(totalIncome.toInt(), expenses);
}
