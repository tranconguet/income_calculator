import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_result.freezed.dart';

@freezed
class LoginResult with _$LoginResult {
  const factory LoginResult({
    required String userId,
    required String userToken,
  }) = _LoginResult;
}

@freezed
class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String userName,
    required String password,
  }) = _LoginParams;
}
