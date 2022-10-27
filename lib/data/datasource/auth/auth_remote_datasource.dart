import 'package:income_calculator/data/core/exceptions.dart';
import 'package:income_calculator/data/core/network_connectivity.dart';
import 'package:income_calculator/data/core/utils.dart';
import 'package:income_calculator/data/datasource/auth/auth_api.dart';
import 'package:income_calculator/data/models/login_response/login_response_dto.dart';
import 'package:income_calculator/data/models/user/user_dto.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseDto> login(String userName, String password);
  Future<UserDto> getUserInfo();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthApi _authenticationApi;

  AuthRemoteDataSourceImpl(this._authenticationApi);

  @override
  Future<LoginResponseDto> login(String userName, String password) async {
    if (!await NetworkConnectivity.isNetworkConnected) {
      throw NetworkNotConnectedException();
    }
    final response = await _authenticationApi.login(userName, password);
    final data = response.data;
    if (response.statusCode == 200 && data != null) {
      return await convertDataModel(data, LoginResponseDto.fromJson);
    } else if (response.statusCode == 150) {
      throw AuthException();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<UserDto> getUserInfo() async {
    if (!await NetworkConnectivity.isNetworkConnected) {
      throw NetworkNotConnectedException();
    }
    final response = await _authenticationApi.getUserInfo();
    final data = response.data;
    if (response.statusCode == 200 && data != null) {
      return await convertDataModel(data, UserDto.fromJson);
    } else if (response.statusCode == 150) {
      throw AuthException();
    } else {
      throw ServerException();
    }
  }
}
