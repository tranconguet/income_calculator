import 'package:hive/hive.dart';
import 'package:income_calculator/data/constants.dart';
import 'package:income_calculator/domain/core/enums.dart';
import 'package:income_calculator/domain/models/expense_history/expense_history.dart';
import 'package:income_calculator/domain/models/expense_item/expense_item.dart';
import 'package:income_calculator/domain/repository/expense_repository.dart';

class ExpenseRepositoryImpl implements ExpenseRepository {
  @override
  Future<bool> addExpenseItem({
    required String itemName,
    required String value,
    required ExpenseType type,
  }) async {
    final newHistory = (await _getLatestHistory()).clone();
    // If there is item with the same itemName and type then return false
    if (newHistory.expenseItems.any((element) => element.name == itemName && element.expenseType == type)) return false;
    final newItem = ExpenseItem(
      name: itemName,
      expenseType: type,
      value: value,
    );
    newHistory.expenseItems.add(newItem);
    await _saveNewVersionIntoHistory(newHistory);
    return true;
  }

  @override
  Future<void> deleteExpenseItem({required ExpenseItem item}) async {
    print('#deleteExpenseItem item: $item');
    final newHistory = (await _getLatestHistory()).clone();
    newHistory.expenseItems.removeWhere((element) => element.name == item.name && element.value == item.value);
    await _saveNewVersionIntoHistory(newHistory);
  }

  @override
  Future<bool> editExpenseItem({
    required ExpenseItem item,
    String? newName,
    ExpenseType? newType,
    String? newValue,
  }) async {
    print('newName $newName newType $newType newValue $newValue');
    final newHistory = (await _getLatestHistory()).clone();
    final updatedItem = newHistory.expenseItems
        .firstWhere((element) => element.name == item.name && element.expenseType == item.expenseType);
    print(
        'updatedItem name: ${updatedItem.name} - expenseType: ${updatedItem.expenseType} - value: ${updatedItem.value}');
    if (newName != null) updatedItem.name = newName;
    if (newType != null) updatedItem.expenseType = newType;
    if (newValue != null) updatedItem.value = newValue;
    // If there is at least one item with the same name and type (not contains itself) then return false
    final sameItems = newHistory.expenseItems
        .where((element) => element.name == updatedItem.name && element.expenseType == updatedItem.expenseType);
    print('sameItems.length: ${sameItems.length}');
    if (sameItems.length > 1) return false;
    await _saveNewVersionIntoHistory(newHistory);
    return true;
  }

  @override
  Future<ExpenseItem?> getExpenseItemByKey({required String key}) async {
    final itemKey = int.tryParse(key);
    return itemKey != null ? Hive.box<ExpenseItem>(expenseHiveBox).get(itemKey) : null;
  }

  @override
  Future<ExpenseItem?> getExpenseItemByName({required String name}) async {
    final itemList = Hive.box<ExpenseItem>(expenseHiveBox).values.where((element) => element.name == name);
    return itemList.isNotEmpty ? itemList.first : null;
  }

  @override
  Future<List<ExpenseItem>> getExpensesItemByType({required ExpenseType selectedType}) async {
    return Hive.box<ExpenseItem>(expenseHiveBox)
        .values
        .where((element) => element.expenseType == selectedType)
        .toList();
  }

  @override
  Future<List<ExpenseItem>> searchExpenseItemByName({required String characters}) async {
    return await Hive.box<ExpenseItem>(expenseHiveBox)
        .values
        .where((element) => element.name.contains(characters))
        .toList();
  }

  @override
  Future<List<ExpenseItem>> getAllExpenseItems() async {
    return await Hive.box<ExpenseItem>(expenseHiveBox).values.toList();
  }

  @override
  Future<bool> rollbackHistory({required ExpenseHistory history}) async {
    if (await _getLatestHistory() == history) return false;
    await _saveNewVersionIntoHistory(history.clone());
    return true;
  }
  
  Future<void> _saveNewVersionIntoHistory(ExpenseHistory newHistory) async {
    final timeUpdate = DateTime.now().toString();
    newHistory.lastUpdated = timeUpdate;
    await Hive.box<ExpenseHistory>(expenseHistoryHiveBox).add(newHistory);
  }

  Future<ExpenseHistory> _getLatestHistory() async {
    final box = await Hive.box<ExpenseHistory>(expenseHistoryHiveBox).values;
    if (box.isNotEmpty) {
      return box.last;
    } else {
      return ExpenseHistory(expenseItems: [], lastUpdated: '');
    }
  }

}
