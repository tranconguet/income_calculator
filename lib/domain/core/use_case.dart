import 'package:income_calculator/domain/core/data_result.dart';

///
/// Present for a use case with param [P]
/// Returns [DataResult] of [R]
///
abstract class UseCase<P, R> {
  Future<DataResult<R>> call({required P params});
}

class NoParams {}
