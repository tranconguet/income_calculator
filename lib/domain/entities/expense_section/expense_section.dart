import 'package:income_calculator/domain/core/enums.dart';

class ExpenseSection {
  final ExpenseSign sign;
  final List<ExpenseType> expenseTypes;
  final String expenseSectionName;

  const ExpenseSection({
    required this.sign,
    required this.expenseTypes,
    required this.expenseSectionName,
  });
}
