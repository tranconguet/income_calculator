import 'package:income_calculator/data/core/exceptions.dart';
import 'package:income_calculator/data/datasource/auth/auth_local_datasource.dart';
import 'package:income_calculator/data/datasource/auth/auth_remote_datasource.dart';
import 'package:income_calculator/data/datasource/auth/mapper/login_result_mapper.dart';
import 'package:income_calculator/data/datasource/auth/mapper/user_info_mapper.dart';
import 'package:income_calculator/domain/core/data_result.dart';
import 'package:income_calculator/domain/models/login/login_result.dart';
import 'package:income_calculator/domain/models/user/user_info.dart';
import 'package:income_calculator/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;
  final LoginResultMapper _loginResultMapper;
  final UserInfoMapper _userInfoMapper;

  AuthRepositoryImpl(
    this._authRemoteDataSource,
    this._loginResultMapper,
    this._authLocalDataSource,
    this._userInfoMapper,
  );

  @override
  Future<DataResult<LoginResult>> login(String userName, String password) async {
    try {
      final response = await _authRemoteDataSource.login('userName', 'password');
      return DataResult.success(data: _loginResultMapper.mapDtoToEntity(response));
    } on NetworkNotConnectedException catch (e) {
      return DataResult.failed(exception: e);
    } on AuthException catch (e) {
      return DataResult.failed(exception: e);
    } on ServerException catch (e) {
      return DataResult.failed(exception: e);
    }
  }

  @override
  Future<DataResult<UserInfo>> getUserInfo() async {
    try {
      final response = await _authRemoteDataSource.getUserInfo();
      await _authLocalDataSource.setGetUserInfoResult(response.toJson());
      return DataResult.success(data: _userInfoMapper.mapDtoToEntity(response));
    } on Exception catch (e) {
      // If get data failed then get data from local
      final responseFromLocal = await _authLocalDataSource.getUserInfo();
      return DataResult.failed(exception: e, data: _userInfoMapper.mapDtoToEntity(responseFromLocal));
    }
  }
}
