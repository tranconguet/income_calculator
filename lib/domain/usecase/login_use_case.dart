import 'package:income_calculator/domain/core/data_result.dart';
import 'package:income_calculator/domain/core/use_case.dart';
import 'package:income_calculator/domain/entities/login/login_result.dart';
import 'package:income_calculator/domain/repository/auth_repository.dart';

class LoginUseCase implements UseCase<LoginParams, LoginResult> {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<DataResult<LoginResult>> call({required LoginParams params}) async {
    return await _authRepository.login(params.userName, params.password);
  }
}
