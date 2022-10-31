// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseDto _$LoginResponseDtoFromJson(Map<String, dynamic> json) {
  return _LoginResponseDto.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseDto {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_token')
  String get userToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'unused_data')
  String get unusedData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseDtoCopyWith<LoginResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDtoCopyWith<$Res> {
  factory $LoginResponseDtoCopyWith(
          LoginResponseDto value, $Res Function(LoginResponseDto) then) =
      _$LoginResponseDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_token') String userToken,
      @JsonKey(name: 'unused_data') String unusedData});
}

/// @nodoc
class _$LoginResponseDtoCopyWithImpl<$Res>
    implements $LoginResponseDtoCopyWith<$Res> {
  _$LoginResponseDtoCopyWithImpl(this._value, this._then);

  final LoginResponseDto _value;
  // ignore: unused_field
  final $Res Function(LoginResponseDto) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? userToken = freezed,
    Object? unusedData = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userToken: userToken == freezed
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
      unusedData: unusedData == freezed
          ? _value.unusedData
          : unusedData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginResponseDtoCopyWith<$Res>
    implements $LoginResponseDtoCopyWith<$Res> {
  factory _$$_LoginResponseDtoCopyWith(
          _$_LoginResponseDto value, $Res Function(_$_LoginResponseDto) then) =
      __$$_LoginResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_token') String userToken,
      @JsonKey(name: 'unused_data') String unusedData});
}

/// @nodoc
class __$$_LoginResponseDtoCopyWithImpl<$Res>
    extends _$LoginResponseDtoCopyWithImpl<$Res>
    implements _$$_LoginResponseDtoCopyWith<$Res> {
  __$$_LoginResponseDtoCopyWithImpl(
      _$_LoginResponseDto _value, $Res Function(_$_LoginResponseDto) _then)
      : super(_value, (v) => _then(v as _$_LoginResponseDto));

  @override
  _$_LoginResponseDto get _value => super._value as _$_LoginResponseDto;

  @override
  $Res call({
    Object? userId = freezed,
    Object? userToken = freezed,
    Object? unusedData = freezed,
  }) {
    return _then(_$_LoginResponseDto(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userToken: userToken == freezed
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
      unusedData: unusedData == freezed
          ? _value.unusedData
          : unusedData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LoginResponseDto implements _LoginResponseDto {
  const _$_LoginResponseDto(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'user_token') required this.userToken,
      @JsonKey(name: 'unused_data') required this.unusedData});

  factory _$_LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseDtoFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'user_token')
  final String userToken;
  @override
  @JsonKey(name: 'unused_data')
  final String unusedData;

  @override
  String toString() {
    return 'LoginResponseDto(userId: $userId, userToken: $userToken, unusedData: $unusedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponseDto &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.userToken, userToken) &&
            const DeepCollectionEquality()
                .equals(other.unusedData, unusedData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(userToken),
      const DeepCollectionEquality().hash(unusedData));

  @JsonKey(ignore: true)
  @override
  _$$_LoginResponseDtoCopyWith<_$_LoginResponseDto> get copyWith =>
      __$$_LoginResponseDtoCopyWithImpl<_$_LoginResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseDtoToJson(
      this,
    );
  }
}

abstract class _LoginResponseDto implements LoginResponseDto {
  const factory _LoginResponseDto(
          {@JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'user_token') required final String userToken,
          @JsonKey(name: 'unused_data') required final String unusedData}) =
      _$_LoginResponseDto;

  factory _LoginResponseDto.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseDto.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'user_token')
  String get userToken;
  @override
  @JsonKey(name: 'unused_data')
  String get unusedData;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponseDtoCopyWith<_$_LoginResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
