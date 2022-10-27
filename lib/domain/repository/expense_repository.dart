import 'package:income_calculator/domain/core/enums.dart';
import 'package:income_calculator/domain/entities/expense_history/expense_history.dart';
import 'package:income_calculator/domain/entities/expense_item/expense_item.dart';

abstract class ExpenseRepository {
  Future<List<ExpenseItem>> getAllExpenseItems();
  Future<bool> addExpenseItem({
    required String itemName,
    required String value,
    required ExpenseType type,
  });
  Future<bool> editExpenseItem({
    required ExpenseItem item,
    String? newName,
    ExpenseType? newType,
    String? newValue,
  });
  Future<bool> rollbackHistory({required ExpenseHistory history});
  Future<ExpenseItem?> getExpenseItemByKey({required String key});
  Future<ExpenseItem?> getExpenseItemByName({required String name});
  Future<List<ExpenseItem>> getExpensesItemByType({required ExpenseType selectedType});
  Future<List<ExpenseItem>> searchExpenseItemByName({required String characters});
  Future<void> deleteExpenseItem({required ExpenseItem item});
}
