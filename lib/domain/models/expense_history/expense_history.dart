import 'package:hive/hive.dart';
import 'package:income_calculator/domain/models/expense_item/expense_item.dart';

part 'expense_history.g.dart';

@HiveType(typeId: 2)
class ExpenseHistory extends HiveObject {
  @HiveField(0)
  String lastUpdated = "";

  @HiveField(1)
  List<ExpenseItem> expenseItems = [];

  ExpenseHistory({
    required this.expenseItems,
    required this.lastUpdated,
  });

  ExpenseHistory clone() => ExpenseHistory(
        expenseItems: expenseItems.map((e) => e.clone()).toList(),
        lastUpdated: lastUpdated,
      );
}
