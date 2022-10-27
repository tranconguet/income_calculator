import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:income_calculator/data/constants.dart';
import 'package:income_calculator/data/repository_impl/expense_repository_impl.dart';
import 'package:income_calculator/domain/core/enums.dart';
import 'package:income_calculator/domain/entities/expense_history/expense_history.dart';
import 'package:income_calculator/presentation/features/home/bloc/home_bloc.dart';
import 'package:income_calculator/presentation/widgets/common_dropdown_button.dart';
import 'package:income_calculator/presentation/widgets/common_input_field.dart';
import 'package:income_calculator/presentation/features/home/view/components/expense_sections.dart';
import 'package:income_calculator/presentation/features/home/view/components/history_list_dialog.dart';
import 'package:income_calculator/presentation/features/home/view/components/total_budget_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ExpandableController _expandableController = ExpandableController(initialExpanded: true);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(ExpenseRepositoryImpl()),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text('Income Calculator'),
              const SizedBox(width: 16),
              _ExpandedButton(expandableController: _expandableController),
            ],
          ),
        ),
        body: Column(
          children: [
            _InputField(expandableController: _expandableController),
            const Expanded(
              child: _ExpenseView(),
            ),
          ],
        ),
      ),
    );
  }
}

class _ExpenseView extends StatelessWidget {
  const _ExpenseView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box<ExpenseHistory>(expenseHistoryHiveBox).listenable(),
      builder: (context, Box<ExpenseHistory> box, _) {
        final currentExpenseHistory = box.values.isNotEmpty ? box.values.last : null;
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TotalBudgetText(currentExpenseHistory: currentExpenseHistory),
                  _HistoryListButton(
                    expenseHistoryList: box.values.toList(),
                  ),
                ],
              ),
              currentExpenseHistory?.lastUpdated != null
                  ? _LastUpdateText(currentExpenseHistory: currentExpenseHistory)
                  : const SizedBox.shrink(),
              Expanded(
                child: ExpenseSections(expenseItems: currentExpenseHistory?.expenseItems ?? []),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _LastUpdateText extends StatelessWidget {
  const _LastUpdateText({
    Key? key,
    required this.currentExpenseHistory,
  }) : super(key: key);

  final ExpenseHistory? currentExpenseHistory;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text('Last update: ${currentExpenseHistory?.lastUpdated}'),
    );
  }
}

class _HistoryListButton extends StatelessWidget {
  const _HistoryListButton({
    Key? key,
    required this.expenseHistoryList,
  }) : super(key: key);

  final List<ExpenseHistory> expenseHistoryList;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (dialogContext) => HistoryListDialog(
            expenseHistoryList: expenseHistoryList,
            rollbackFunction: context.read<HomeBloc>().rollbackHistory,
          ),
        );
      },
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
      child: const Text(
        'History',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class _ExpandedButton extends StatelessWidget {
  const _ExpandedButton({
    Key? key,
    required ExpandableController expandableController,
  })  : _expandableController = expandableController,
        super(key: key);

  final ExpandableController _expandableController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: IconButton(
        padding: const EdgeInsets.all(0),
        icon: ExpandableNotifier(
          child: ExpandablePanel(
            collapsed: const Icon(Icons.add_circle_outline_outlined),
            expanded: const Icon(Icons.remove_circle_outline_outlined),
            controller: _expandableController,
            theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                bodyAlignment: ExpandablePanelBodyAlignment.center,
                alignment: Alignment.center),
          ),
        ),
        onPressed: () {
          _expandableController.toggle();
        },
      ),
    );
  }
}

class _InputField extends StatelessWidget {
  _InputField({
    Key? key,
    required this.expandableController,
  }) : super(key: key);

  final ExpandableController expandableController;

  final TextEditingController _expenseNameController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();
  ExpenseType _type = ExpenseType.income;

  @override
  Widget build(BuildContext context) {
    final inputForm = Column(
      children: [
        CommonInputField(
          textController: _expenseNameController,
          hintText: 'Expense Name',
        ),
        Row(
          children: [
            Expanded(
              child: CommonInputField(
                textController: _valueController,
                keyboardType: TextInputType.number,
                hintText: 'Value',
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CommonDropdownButton(
                  items: ExpenseType.values
                      .map(
                        (e) => DropdownMenuItem<ExpenseType>(
                          onTap: () {},
                          value: e,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              e.name,
                              style: const TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  initialValue: _type,
                  onChanged: (ExpenseType? value) {
                    if (value != null) _type = value;
                  },
                ),
              ),
            ),
          ],
        ),
        context.watch<HomeBloc>().state.maybeWhen(
            invalidInput: (String message) => Text(
                  message,
                  style: const TextStyle(color: Colors.red),
                ),
            orElse: () => const SizedBox.shrink()),
        _AddNewButton(
          onPressed: (BuildContext context) {
            context.read<HomeBloc>().add(
                  HomeEvent.inputForm(
                    name: _expenseNameController.text,
                    value: _valueController.text,
                    type: _type,
                  ),
                );
          },
        ),
      ],
    );
    return ExpandableNotifier(
      child: ExpandablePanel(
        collapsed: const SizedBox.shrink(),
        expanded: inputForm,
        controller: expandableController,
      ),
    );
  }
}

class _AddNewButton extends StatelessWidget {
  const _AddNewButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final void Function(BuildContext context) onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextButton(
        onPressed: () {
          onPressed.call(context);
        },
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amberAccent)),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Center(
            child: Text(
              'Add',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
