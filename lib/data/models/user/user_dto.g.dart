// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDtoHiveAdapter extends TypeAdapter<_$_UserDto> {
  @override
  final int typeId = 2;

  @override
  _$_UserDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserDto(
      userName: fields[0] as String,
      userId: fields[1] as String,
      age: fields[2] as int,
      unusedData: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserDto obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.userName)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.age)
      ..writeByte(3)
      ..write(obj.unusedData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDtoHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      userName: json['user_name'] as String,
      userId: json['user_id'] as String,
      age: json['age'] as int,
      unusedData: json['unused_data'] as String,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'user_name': instance.userName,
      'user_id': instance.userId,
      'age': instance.age,
      'unused_data': instance.unusedData,
    };
