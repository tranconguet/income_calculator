import 'package:income_calculator/data/core/mapper.dart';
import 'package:income_calculator/data/models/login_response/login_response_dto.dart';
import 'package:income_calculator/domain/entities/login/login_result.dart';

class LoginResultMapper extends Mapper<LoginResponseDto, LoginResult> {
  @override
  LoginResult mapDtoToEntity(LoginResponseDto data) {
    return LoginResult(
      userId: data.userId,
      userToken: data.userToken,
    );
  }
}
