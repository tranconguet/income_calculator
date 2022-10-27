// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserInfo {
  String get userName => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res>;
  $Res call({String userName, String userId, int age});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res> implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  final UserInfo _value;
  // ignore: unused_field
  final $Res Function(UserInfo) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userId = freezed,
    Object? age = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_UserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$$_UserInfoCopyWith(
          _$_UserInfo value, $Res Function(_$_UserInfo) then) =
      __$$_UserInfoCopyWithImpl<$Res>;
  @override
  $Res call({String userName, String userId, int age});
}

/// @nodoc
class __$$_UserInfoCopyWithImpl<$Res> extends _$UserInfoCopyWithImpl<$Res>
    implements _$$_UserInfoCopyWith<$Res> {
  __$$_UserInfoCopyWithImpl(
      _$_UserInfo _value, $Res Function(_$_UserInfo) _then)
      : super(_value, (v) => _then(v as _$_UserInfo));

  @override
  _$_UserInfo get _value => super._value as _$_UserInfo;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userId = freezed,
    Object? age = freezed,
  }) {
    return _then(_$_UserInfo(
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
    ));
  }
}

/// @nodoc

class _$_UserInfo implements _UserInfo {
  const _$_UserInfo(
      {required this.userName, required this.userId, required this.age});

  @override
  final String userName;
  @override
  final String userId;
  @override
  final int age;

  @override
  String toString() {
    return 'UserInfo(userName: $userName, userId: $userId, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfo &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.age, age));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(age));

  @JsonKey(ignore: true)
  @override
  _$$_UserInfoCopyWith<_$_UserInfo> get copyWith =>
      __$$_UserInfoCopyWithImpl<_$_UserInfo>(this, _$identity);
}

abstract class _UserInfo implements UserInfo {
  const factory _UserInfo(
      {required final String userName,
      required final String userId,
      required final int age}) = _$_UserInfo;

  @override
  String get userName;
  @override
  String get userId;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoCopyWith<_$_UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
