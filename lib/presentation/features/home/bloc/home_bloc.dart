import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:income_calculator/domain/core/enums.dart';
import 'package:income_calculator/domain/entities/expense_history/expense_history.dart';
import 'package:income_calculator/domain/entities/expense_item/expense_item.dart';
import 'package:income_calculator/domain/repository/expense_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ExpenseRepository _expenseRepository;

  HomeBloc(this._expenseRepository) : super(const _Initial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<_InputFormEvent>(_inputFormHandler);
  }

  Future<List<ExpenseItem>> getAllExpenses() async {
    return await _expenseRepository.getAllExpenseItems();
  }

  Future<void> addExpense({
    required String expenseName,
    required String value,
    required ExpenseType type,
  }) async {
    await _expenseRepository.addExpenseItem(
      itemName: expenseName,
      value: value,
      type: type,
    );
  }

  Future<void> removeExpense({required ExpenseItem item}) async {
    await _expenseRepository.deleteExpenseItem(item: item);
  }

  Future<void> editExpense({
    required ExpenseItem item,
    String? newName,
    ExpenseType? newType,
    String? newValue,
  }) async {
    await _expenseRepository.editExpenseItem(
      item: item,
      newName: newName,
      newType: newType,
      newValue: newValue,
    );
  }

  Future<void> rollbackHistory(ExpenseHistory history) async {
    await _expenseRepository.rollbackHistory(history: history);
  }

  FutureOr<void> _inputFormHandler(_InputFormEvent event, Emitter<HomeState> emit) async {
    if (event.name.isNotEmpty && int.tryParse(event.value) != null) {
      await addExpense(expenseName: event.name, value: event.value, type: event.type);
      emit(const HomeState.addSuccessfully());
    } else {
      emit(const HomeState.invalidInput(errorMessage: 'Please enter valid input'));
    }
  }
}
