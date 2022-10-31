import 'package:flutter/material.dart';
import 'package:income_calculator/domain/core/enums.dart';
import 'package:income_calculator/domain/models/expense_item/expense_item.dart';
import 'package:income_calculator/presentation/features/home/view/components/edit_expense_dialog.dart';
import 'package:income_calculator/presentation/widgets/single_option_dialog.dart';

class ExpenseCardItem extends StatelessWidget {
  const ExpenseCardItem({
    Key? key,
    required this.item,
    required this.editFunction,
    required this.removeFunction,
    this.showAction = true,
  }) : super(key: key);

  final ExpenseItem item;
  final Future<void> Function({
    required ExpenseItem item,
    String? newName,
    ExpenseType? newType,
    String? newValue,
  })? editFunction;
  final void Function({required ExpenseItem item})? removeFunction;
  final bool showAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            '${item.name}: ',
            style: const TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          '${item.value}\$',
          style: const TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        showAction
            ? TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return EditExpenseDialog(
                        expenseItem: item,
                        onConfirmCallback: editFunction,
                      );
                    },
                  );
                },
                child: const Text('Edit'),
              )
            : const SizedBox.shrink(),
        showAction
            ? TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => SingleOptionDialog(
                      contentText: 'Are you sure want to remove this item?',
                      buttonText: 'Confirm',
                      onButtonPressed: () {
                        removeFunction?.call(item: item);
                      },
                    ),
                  );
                },
                child: const Text('Remove'),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
