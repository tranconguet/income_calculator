import 'package:income_calculator/data/core/mapper.dart';
import 'package:income_calculator/data/entities/user/user_dto.dart';
import 'package:income_calculator/domain/models/user/user_info.dart';

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
