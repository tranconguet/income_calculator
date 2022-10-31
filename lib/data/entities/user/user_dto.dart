import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {

  @HiveType(typeId: 2, adapterName: 'UserDtoHiveAdapter')
  const factory UserDto({
    @HiveField(0) @JsonKey(name: 'user_name') required String userName,
    @HiveField(1) @JsonKey(name: 'user_id') required String userId,
    @HiveField(2) @JsonKey(name: 'age') required int age,
    @HiveField(3) @JsonKey(name: 'unused_data') required String unusedData,}) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
