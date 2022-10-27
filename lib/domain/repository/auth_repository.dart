import 'package:income_calculator/domain/core/data_result.dart';
import 'package:income_calculator/domain/entities/login/login_result.dart';
import 'package:income_calculator/domain/entities/user/user_info.dart';

abstract class AuthRepository {
  Future<DataResult<LoginResult>> login(String userName, String password);
  Future<DataResult<UserInfo>> getUserInfo();
}
