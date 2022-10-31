import 'package:income_calculator/domain/core/enums.dart';
import 'package:income_calculator/domain/models/expense_item/expense_item.dart';
import 'package:income_calculator/domain/models/expense_section/expense_section.dart';

List<ExpenseSection> getExpenseSections() => ExpenseSign.values
    .map((e) => ExpenseSection(sign: e, expenseTypes: e.mapToExpenseTypes(), expenseSectionName: e.mapToString()))
    .toList();

int calculateBudget(List<ExpenseItem> items) {
  final postitiveTotal = items
      .where((element) => ExpenseSign.positive.mapToExpenseTypes().contains(element.expenseType))
      .toList()
      .calculateTotalValue();
  final negativeTotal =
      items.where((element) => ExpenseSign.negative.mapToExpenseTypes().contains(element.expenseType))
      .toList()
      .calculateTotalValue();
  return postitiveTotal - negativeTotal;
}
