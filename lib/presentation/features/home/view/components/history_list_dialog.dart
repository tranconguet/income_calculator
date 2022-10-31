import 'package:flutter/material.dart';
import 'package:income_calculator/domain/core/utils.dart';
import 'package:income_calculator/domain/models/expense_history/expense_history.dart';
import 'package:income_calculator/presentation/core/utils.dart';
import 'package:income_calculator/presentation/features/home/view/components/expense_sections.dart';
import 'package:income_calculator/presentation/features/home/view/components/total_budget_text.dart';

class HistoryListDialog extends StatefulWidget {
  const HistoryListDialog({
    Key? key,
    required this.expenseHistoryList,
    required this.rollbackFunction,
  }) : super(key: key);

  final List<ExpenseHistory> expenseHistoryList;
  final Future<void> Function(ExpenseHistory expenseHistory) rollbackFunction;

  @override
  State<HistoryListDialog> createState() => _HistoryListDialogState();
}

class _HistoryListDialogState extends State<HistoryListDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: widget.expenseHistoryList.isEmpty
          ? const Text('History is empty')
          : LimitedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Last update'),
                  ),
                  // Wrap with Flexiblae to make LimitedBox know how much remain height is
                  Flexible(
                    child: LimitedBox(
                      child: _buildHistoryList(),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  ListView _buildHistoryList() {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextButton(
              child: _HistoryItemTitle(
                budgetTotal: calculateBudget(widget.expenseHistoryList[index].expenseItems),
                lastUpdate: widget.expenseHistoryList[index].lastUpdated.formatDateTimeString() ?? '',
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => _HistoryDetailDialog(expenseHistory: widget.expenseHistoryList[index]),
                );
              },
            ),
          ),
          TextButton(
            onPressed: () => _onRollbackButtonPressed(context, widget.expenseHistoryList[index]),
            child: const Text(
              'Rollback',
              style: TextStyle(color: Colors.blueAccent),
            ),
          ),
        ],
      ),
      itemCount: widget.expenseHistoryList.length,
    );
  }

  void _onRollbackButtonPressed(BuildContext context, ExpenseHistory expenseHistory) async {
    await widget.rollbackFunction.call(expenseHistory);
    if (mounted) {
      Navigator.of(context).pop();
    }
  }
}

class _HistoryItemTitle extends StatelessWidget {
  const _HistoryItemTitle({
    Key? key,
    required this.lastUpdate,
    required this.budgetTotal,
  }) : super(key: key);

  final String lastUpdate;
  final int budgetTotal;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: lastUpdate,
        style: const TextStyle(fontSize: 12, color: Colors.blueAccent),
        children: [
          TextSpan(
            text: ' (${budgetTotal.toString()}\$)',
            style: const TextStyle(color: Colors.red),
          ),
        ],
      ),
      overflow: TextOverflow.clip,
    );
  }
}

class _HistoryDetailDialog extends StatelessWidget {
  const _HistoryDetailDialog({
    Key? key,
    required this.expenseHistory,
  }) : super(key: key);

  final ExpenseHistory expenseHistory;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: LimitedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'History detail',
              style: TextStyle(
                color: Colors.green,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Last update: ${expenseHistory.lastUpdated.formatDateTimeString()}',
                style: const TextStyle(fontSize: 12),
              ),
            ),
            TotalBudgetText(currentExpenseHistory: expenseHistory),
            Flexible(
              child: LimitedBox(
                child: ExpenseSections(
                  expenseItems: expenseHistory.expenseItems,
                  showAction: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
