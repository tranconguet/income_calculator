import 'package:income_calculator/domain/core/data_result.dart';
import 'package:income_calculator/domain/models/login/login_result.dart';
import 'package:income_calculator/domain/models/user/user_info.dart';

abstract class AuthRepository {
  Future<DataResult<LoginResult>> login(String userName, String password);
  Future<DataResult<UserInfo>> getUserInfo();
}
