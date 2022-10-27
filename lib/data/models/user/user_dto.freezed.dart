// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  @HiveField(0)
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'age')
  int get age => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'unused_data')
  String get unusedData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'user_name') String userName,
      @HiveField(1) @JsonKey(name: 'user_id') String userId,
      @HiveField(2) @JsonKey(name: 'age') int age,
      @HiveField(3) @JsonKey(name: 'unused_data') String unusedData});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userId = freezed,
    Object? age = freezed,
    Object? unusedData = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      unusedData: unusedData == freezed
          ? _value.unusedData
          : unusedData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$_UserDtoCopyWith(
          _$_UserDto value, $Res Function(_$_UserDto) then) =
      __$$_UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'user_name') String userName,
      @HiveField(1) @JsonKey(name: 'user_id') String userId,
      @HiveField(2) @JsonKey(name: 'age') int age,
      @HiveField(3) @JsonKey(name: 'unused_data') String unusedData});
}

/// @nodoc
class __$$_UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$$_UserDtoCopyWith<$Res> {
  __$$_UserDtoCopyWithImpl(_$_UserDto _value, $Res Function(_$_UserDto) _then)
      : super(_value, (v) => _then(v as _$_UserDto));

  @override
  _$_UserDto get _value => super._value as _$_UserDto;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userId = freezed,
    Object? age = freezed,
    Object? unusedData = freezed,
  }) {
    return _then(_$_UserDto(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      unusedData: unusedData == freezed
          ? _value.unusedData
          : unusedData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2, adapterName: 'UserDtoHiveAdapter')
class _$_UserDto implements _UserDto {
  const _$_UserDto(
      {@HiveField(0) @JsonKey(name: 'user_name') required this.userName,
      @HiveField(1) @JsonKey(name: 'user_id') required this.userId,
      @HiveField(2) @JsonKey(name: 'age') required this.age,
      @HiveField(3) @JsonKey(name: 'unused_data') required this.unusedData});

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'user_name')
  final String userName;
  @override
  @HiveField(1)
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @HiveField(2)
  @JsonKey(name: 'age')
  final int age;
  @override
  @HiveField(3)
  @JsonKey(name: 'unused_data')
  final String unusedData;

  @override
  String toString() {
    return 'UserDto(userName: $userName, userId: $userId, age: $age, unusedData: $unusedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality()
                .equals(other.unusedData, unusedData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(unusedData));

  @JsonKey(ignore: true)
  @override
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      __$$_UserDtoCopyWithImpl<_$_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(
      this,
    );
  }
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {@HiveField(0)
      @JsonKey(name: 'user_name')
          required final String userName,
      @HiveField(1)
      @JsonKey(name: 'user_id')
          required final String userId,
      @HiveField(2)
      @JsonKey(name: 'age')
          required final int age,
      @HiveField(3)
      @JsonKey(name: 'unused_data')
          required final String unusedData}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'user_name')
  String get userName;
  @override
  @HiveField(1)
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @HiveField(2)
  @JsonKey(name: 'age')
  int get age;
  @override
  @HiveField(3)
  @JsonKey(name: 'unused_data')
  String get unusedData;
  @override
  @JsonKey(ignore: true)
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
