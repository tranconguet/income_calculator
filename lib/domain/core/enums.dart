enum ExpenseType { income, expense, debt, loan, unknown }

enum ExpenseSign { positive, negative }

extension ExpenseSignExt on ExpenseSign {
  String mapToString() {
    switch (this) {
      case ExpenseSign.positive:
        return 'Positive';
      case ExpenseSign.negative:
        return 'Negative';
    }
  }

  List<ExpenseType> mapToExpenseTypes() {
    switch (this) {
      case ExpenseSign.positive:
        return [ExpenseType.income, ExpenseType.debt];
      case ExpenseSign.negative:
        return [ExpenseType.loan, ExpenseType.expense];
    }
  }
}
