import 'package:income_calculator/presentation/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';

class IncomeCalculatorApp extends StatelessWidget {
  const IncomeCalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
