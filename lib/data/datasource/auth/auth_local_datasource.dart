import 'package:income_calculator/data/core/hive_service.dart';
import 'package:income_calculator/data/core/utils.dart';
import 'package:income_calculator/data/models/user/user_dto.dart';

abstract class AuthLocalDataSource {
  Future<UserDto> getUserInfo();
  Future<void> setGetUserInfoResult(Map<String, dynamic> value);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  @override
  Future<UserDto> getUserInfo() async {
    final record = await HiveService.getInstance().getApiValue('auth/login');
    return await convertDataModel(record, UserDto.fromJson);
  }

  @override
  Future<void> setGetUserInfoResult(Map<String, dynamic> value) async {
    await HiveService.getInstance().setApiValue('auth/login', value);
  }
}
