import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:income_calculator/domain/models/expense_item/expense_item.dart';
import 'package:income_calculator/presentation/features/home/bloc/home_bloc.dart';
import 'package:income_calculator/presentation/features/home/view/components/expense_card_item.dart';

class ExpenseSection extends StatelessWidget {
  const ExpenseSection({
    Key? key,
    required this.name,
    required this.items,
    this.showAction = true,
  }) : super(key: key);

  final String name;
  final List<ExpenseItem> items;
  final bool showAction;

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      controller: ExpandableController(initialExpanded: true),
      header: _ExpenseSectionTitle(name: name),
      expanded: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, itemIndex) {
          return ExpenseCardItem(
            item: items[itemIndex],
            editFunction: showAction ? context.read<HomeBloc>().editExpense : null,
            removeFunction: showAction ? context.read<HomeBloc>().removeExpense : null,
            showAction: showAction,
          );
        },
        itemCount: items.length,
      ),
      collapsed: const SizedBox.shrink(),
    );
  }
}

class _ExpenseSectionTitle extends StatelessWidget {
  const _ExpenseSectionTitle({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          name,
          style: const TextStyle(
            color: Colors.brown,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
