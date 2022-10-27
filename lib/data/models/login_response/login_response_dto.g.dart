// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseDto _$$_LoginResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_LoginResponseDto(
      userId: json['user_id'] as String,
      userToken: json['user_token'] as String,
      unusedData: json['unused_data'] as String,
    );

Map<String, dynamic> _$$_LoginResponseDtoToJson(_$_LoginResponseDto instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_token': instance.userToken,
      'unused_data': instance.unusedData,
    };
