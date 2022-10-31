import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:income_calculator/domain/core/enums.dart';

part 'expense_item.g.dart';

@HiveType(typeId: 0)
class ExpenseItem extends HiveObject {
  ExpenseType get expenseType => _type.toExpenseType();
  set expenseType(ExpenseType value) {
    _type = value.toString();
  }

  @HiveField(0)
  @Default('Default name')
  String name = 'Default name';

  @HiveField(1)
  @Default('ExpenseType.income')
  String _type = 'ExpenseType.income';

  @HiveField(2)
  @Default('0')
  String value = '0';

  ExpenseItem({
    this.name = 'Default name',
    ExpenseType expenseType = ExpenseType.income,
    this.value = '0',
  }) : _type = expenseType.toString();

  ExpenseItem clone() => ExpenseItem(
        name: name,
        expenseType: expenseType,
        value: value,
      );
}

extension ExpenseTypeExtension on String {
  ExpenseType toExpenseType() {
    return ExpenseType.values.firstWhere(
      (element) => this == element.toString(),
      orElse: (() => ExpenseType.unknown),
    );
  }
}

extension ExpenseItemListExt on List<ExpenseItem> {
  int calculateTotalValue() {
    if (isEmpty) return 0;
    return map((e) => int.tryParse(e.value) ?? 0).reduce((value, element) => value + element);
  }
}
