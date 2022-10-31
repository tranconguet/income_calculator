
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_dto.freezed.dart';
part 'login_response_dto.g.dart';

@freezed
class LoginResponseDto with _$LoginResponseDto {
  @JsonSerializable(explicitToJson: true)
  const factory LoginResponseDto({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'user_token') required String userToken,
    @JsonKey(name: 'unused_data') required String unusedData,
  }) = _LoginResponseDto;

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) => _$LoginResponseDtoFromJson(json);
}
