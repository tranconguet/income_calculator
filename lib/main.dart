import 'package:hive/hive.dart';
import 'package:income_calculator/app.dart';
import 'package:income_calculator/data/constants.dart';
import 'package:income_calculator/data/core/hive_service.dart';
import 'package:income_calculator/domain/entities/expense_history/expense_history.dart';
import 'package:income_calculator/domain/entities/expense_item/expense_item.dart';
import 'package:income_calculator/lifecycle_event_handler.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding.instance.addObserver(AppLifecycleEventHandler());
  await HiveService.init();
  await _initDatabase();
  runApp(const IncomeCalculatorApp());
}

Future<void> _initDatabase() async {
  Hive.registerAdapter(ExpenseHistoryAdapter());
  Hive.registerAdapter(ExpenseItemAdapter());
  await Hive.openBox<ExpenseHistory>(expenseHistoryHiveBox);
}
