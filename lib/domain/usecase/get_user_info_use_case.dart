import 'package:income_calculator/domain/core/data_result.dart';
import 'package:income_calculator/domain/core/use_case.dart';
import 'package:income_calculator/domain/models/user/user_info.dart';
import 'package:income_calculator/domain/repository/auth_repository.dart';

class GetUserInfoUseCase implements UseCase<NoParams?, UserInfo> {
  final AuthRepository _authRepository;

  GetUserInfoUseCase(this._authRepository);

  @override
  Future<DataResult<UserInfo>> call({required NoParams? params}) async {
    return await _authRepository.getUserInfo();
  }
}
