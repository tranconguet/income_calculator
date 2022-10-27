import 'package:income_calculator/data/core/mapper.dart';
import 'package:income_calculator/data/models/user/user_dto.dart';
import 'package:income_calculator/domain/entities/user/user_info.dart';

class UserInfoMapper extends Mapper<UserDto, UserInfo> {
  @override
  UserInfo mapDtoToEntity(UserDto data) {
    return UserInfo(
      userName: data.userName,
      userId: data.userId,
      age: data.age,
    );
  }
}
