import 'package:flutter/foundation.dart';
import 'package:income_calculator/data/core/custom_dio.dart';

///
/// Execute heavy task in other isolate with 1 input to avoid freeze
/// main isolate. 
/// Eg: Convert raw json is heavy task and can take long time to execute.
/// 
/// [input] param of executed function
/// [heavyTaskFunction] function that executed
/// 
/// Returns [T] output of [heavyTaskFunction] function
///
Future<T> convertDataModel<T, B>(B input, T Function(B) heavyTaskFunction) async {
  return await compute(heavyTaskFunction, input);
}
