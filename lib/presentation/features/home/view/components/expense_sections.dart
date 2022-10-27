import 'package:flutter/material.dart';
import 'package:income_calculator/domain/core/utils.dart';
import 'package:income_calculator/domain/entities/expense_item/expense_item.dart';
import 'package:income_calculator/presentation/features/home/view/components/expense_section.dart';

class ExpenseSections extends StatelessWidget {
  const ExpenseSections({
    Key? key,
    required this.expenseItems,
    this.showAction = true,
  }) : super(key: key);

  final List<ExpenseItem> expenseItems;
  final bool showAction;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) {
        final rules = getExpenseSections();
        final name = rules[index].expenseSectionName;
        final items = expenseItems.where((element) => rules[index].expenseTypes.contains(element.expenseType)).toList();
        return ExpenseSection(name: name, items: items, showAction: showAction);
      },
    );
  }
}
