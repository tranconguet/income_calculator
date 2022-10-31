// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginResult {
  String get userId => throw _privateConstructorUsedError;
  String get userToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginResultCopyWith<LoginResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultCopyWith<$Res> {
  factory $LoginResultCopyWith(
          LoginResult value, $Res Function(LoginResult) then) =
      _$LoginResultCopyWithImpl<$Res>;
  $Res call({String userId, String userToken});
}

/// @nodoc
class _$LoginResultCopyWithImpl<$Res> implements $LoginResultCopyWith<$Res> {
  _$LoginResultCopyWithImpl(this._value, this._then);

  final LoginResult _value;
  // ignore: unused_field
  final $Res Function(LoginResult) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? userToken = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_LoginResultCopyWith<$Res>
    implements $LoginResultCopyWith<$Res> {
  factory _$$_LoginResultCopyWith(
          _$_LoginResult value, $Res Function(_$_LoginResult) then) =
      __$$_LoginResultCopyWithImpl<$Res>;
  @override
  $Res call({String userId, String userToken});
}

/// @nodoc
class __$$_LoginResultCopyWithImpl<$Res> extends _$LoginResultCopyWithImpl<$Res>
    implements _$$_LoginResultCopyWith<$Res> {
  __$$_LoginResultCopyWithImpl(
      _$_LoginResult _value, $Res Function(_$_LoginResult) _then)
      : super(_value, (v) => _then(v as _$_LoginResult));

  @override
  _$_LoginResult get _value => super._value as _$_LoginResult;

  @override
  $Res call({
    Object? userId = freezed,
    Object? userToken = freezed,
  }) {
    return _then(_$_LoginResult(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userToken: userToken == freezed
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginResult implements _LoginResult {
  const _$_LoginResult({required this.userId, required this.userToken});

  @override
  final String userId;
  @override
  final String userToken;

  @override
  String toString() {
    return 'LoginResult(userId: $userId, userToken: $userToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResult &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.userToken, userToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(userToken));

  @JsonKey(ignore: true)
  @override
  _$$_LoginResultCopyWith<_$_LoginResult> get copyWith =>
      __$$_LoginResultCopyWithImpl<_$_LoginResult>(this, _$identity);
}

abstract class _LoginResult implements LoginResult {
  const factory _LoginResult(
      {required final String userId,
      required final String userToken}) = _$_LoginResult;

  @override
  String get userId;
  @override
  String get userToken;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResultCopyWith<_$_LoginResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginParams {
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginParamsCopyWith<LoginParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginParamsCopyWith<$Res> {
  factory $LoginParamsCopyWith(
          LoginParams value, $Res Function(LoginParams) then) =
      _$LoginParamsCopyWithImpl<$Res>;
  $Res call({String userName, String password});
}

/// @nodoc
class _$LoginParamsCopyWithImpl<$Res> implements $LoginParamsCopyWith<$Res> {
  _$LoginParamsCopyWithImpl(this._value, this._then);

  final LoginParams _value;
  // ignore: unused_field
  final $Res Function(LoginParams) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginParamsCopyWith<$Res>
    implements $LoginParamsCopyWith<$Res> {
  factory _$$_LoginParamsCopyWith(
          _$_LoginParams value, $Res Function(_$_LoginParams) then) =
      __$$_LoginParamsCopyWithImpl<$Res>;
  @override
  $Res call({String userName, String password});
}

/// @nodoc
class __$$_LoginParamsCopyWithImpl<$Res> extends _$LoginParamsCopyWithImpl<$Res>
    implements _$$_LoginParamsCopyWith<$Res> {
  __$$_LoginParamsCopyWithImpl(
      _$_LoginParams _value, $Res Function(_$_LoginParams) _then)
      : super(_value, (v) => _then(v as _$_LoginParams));

  @override
  _$_LoginParams get _value => super._value as _$_LoginParams;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginParams(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginParams implements _LoginParams {
  const _$_LoginParams({required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginParams(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginParams &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_LoginParamsCopyWith<_$_LoginParams> get copyWith =>
      __$$_LoginParamsCopyWithImpl<_$_LoginParams>(this, _$identity);
}

abstract class _LoginParams implements LoginParams {
  const factory _LoginParams(
      {required final String userName,
      required final String password}) = _$_LoginParams;

  @override
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginParamsCopyWith<_$_LoginParams> get copyWith =>
      throw _privateConstructorUsedError;
}
