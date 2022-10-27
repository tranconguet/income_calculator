import 'package:flutter/material.dart';
import 'package:income_calculator/domain/core/enums.dart';
import 'package:income_calculator/domain/entities/expense_item/expense_item.dart';
import 'package:income_calculator/presentation/widgets/common_dropdown_button.dart';
import 'package:income_calculator/presentation/widgets/common_input_field.dart';
import 'package:income_calculator/presentation/widgets/common_text_button.dart';

class EditExpenseDialog extends StatefulWidget {
  EditExpenseDialog({
    Key? key,
    required this.expenseItem,
    required this.onConfirmCallback,
  })  : _expenseNameController = TextEditingController(text: expenseItem.name),
        _valueController = TextEditingController(text: expenseItem.value),
        _expenseType = expenseItem.expenseType,
        super(key: key);

  final ExpenseItem expenseItem;
  final Future<void> Function({
    required ExpenseItem item,
    String? newName,
    ExpenseType? newType,
    String? newValue,
  })? onConfirmCallback;
  final TextEditingController _expenseNameController;
  final TextEditingController _valueController;
  final ExpenseType? _expenseType;

  @override
  State<EditExpenseDialog> createState() => _EditExpenseDialogState();
}

class _EditExpenseDialogState extends State<EditExpenseDialog> {
  bool _isLoading = false;
  ExpenseType? _expenseType;

  _EditExpenseDialogState();

  @override
  void initState() {
    _expenseType = widget._expenseType;
    super.initState();
  }

  @override
  void dispose() {
    widget._expenseNameController.dispose();
    widget._valueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CommonInputField(textController: widget._expenseNameController, hintText: 'Expense name'),
          CommonInputField(
            textController: widget._valueController,
            hintText: 'Value',
            keyboardType: TextInputType.number,
          ),
          _buildExpenseTypeDropdown(),
          if (!_isLoading)
            CommonTextButton(onPressed: _confirmEdit, text: 'Confirm')
          else
            const CircularProgressIndicator(),
        ],
      ),
    );
  }

  CommonDropdownButton<ExpenseType> _buildExpenseTypeDropdown() {
    return CommonDropdownButton<ExpenseType>(
      margin: const EdgeInsets.all(12.0),
      items: ExpenseType.values
          .map(
            (e) => DropdownMenuItem<ExpenseType>(
              onTap: () {},
              value: e,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(e.name),
              ),
            ),
          )
          .toList(),
      onChanged: (type) {
        _expenseType = type;
      },
      initialValue: _expenseType,
    );
  }

  void _confirmEdit() async {
    setState(() {
      _isLoading = true;
    });
    await widget.onConfirmCallback?.call(
      item: widget.expenseItem,
      newName: widget._expenseNameController.text,
      newValue: widget._valueController.text,
      newType: _expenseType,
    );
    setState(() {
      _isLoading = false;
    });
    if (!mounted) return;
    Navigator.pop(context);
  }
}
