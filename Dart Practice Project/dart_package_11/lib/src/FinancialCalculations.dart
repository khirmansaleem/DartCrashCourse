// create a class that imposes a specific Tax on income
// and also imposes a specific interest rate on savings.
// static properties can hold data that is shared among all the instances of the class, that need not
// to be bound to single instance, like if you create a static property to keep track of all the instances
// of the class.
//utility functions that perform a task that is relevant to a class not specific instance.
class FinancialCalculations {
  // the properties which holds tax and interest rates will be static constant in nature
  static const incomeTax = 0.2;
  static const interestRate = 0.3;

  static double calculateIncomeTax(double income) {
    return income * incomeTax;
  }

  static double calculateInterestRate(double income) {
    return income * interestRate;
  }
}
