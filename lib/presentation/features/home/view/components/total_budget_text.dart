
import 'package:flutter/material.dart';
import 'package:income_calculator/domain/core/utils.dart';
import 'package:income_calculator/domain/entities/expense_history/expense_history.dart';

class TotalBudgetText extends StatelessWidget {
  const TotalBudgetText({
    Key? key,
    required this.currentExpenseHistory,
  }) : super(key: key);

  final ExpenseHistory? currentExpenseHistory;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Budget: ${calculateBudget(currentExpenseHistory?.expenseItems ?? [])}',
      style: const TextStyle(
        color: Colors.red,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
