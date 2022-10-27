// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String value, ExpenseType type)
        inputForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String value, ExpenseType type)? inputForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String value, ExpenseType type)? inputForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InputFormEvent value) inputForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InputFormEvent value)? inputForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InputFormEvent value)? inputForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String value, ExpenseType type)
        inputForm,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String value, ExpenseType type)? inputForm,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String value, ExpenseType type)? inputForm,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InputFormEvent value) inputForm,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InputFormEvent value)? inputForm,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InputFormEvent value)? inputForm,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_InputFormEventCopyWith<$Res> {
  factory _$$_InputFormEventCopyWith(
          _$_InputFormEvent value, $Res Function(_$_InputFormEvent) then) =
      __$$_InputFormEventCopyWithImpl<$Res>;
  $Res call({String name, String value, ExpenseType type});
}

/// @nodoc
class __$$_InputFormEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$_InputFormEventCopyWith<$Res> {
  __$$_InputFormEventCopyWithImpl(
      _$_InputFormEvent _value, $Res Function(_$_InputFormEvent) _then)
      : super(_value, (v) => _then(v as _$_InputFormEvent));

  @override
  _$_InputFormEvent get _value => super._value as _$_InputFormEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_InputFormEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExpenseType,
    ));
  }
}

/// @nodoc

class _$_InputFormEvent
    with DiagnosticableTreeMixin
    implements _InputFormEvent {
  const _$_InputFormEvent(
      {required this.name, required this.value, required this.type});

  @override
  final String name;
  @override
  final String value;
  @override
  final ExpenseType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.inputForm(name: $name, value: $value, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.inputForm'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputFormEvent &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_InputFormEventCopyWith<_$_InputFormEvent> get copyWith =>
      __$$_InputFormEventCopyWithImpl<_$_InputFormEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String value, ExpenseType type)
        inputForm,
  }) {
    return inputForm(name, value, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String value, ExpenseType type)? inputForm,
  }) {
    return inputForm?.call(name, value, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String value, ExpenseType type)? inputForm,
    required TResult orElse(),
  }) {
    if (inputForm != null) {
      return inputForm(name, value, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InputFormEvent value) inputForm,
  }) {
    return inputForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InputFormEvent value)? inputForm,
  }) {
    return inputForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InputFormEvent value)? inputForm,
    required TResult orElse(),
  }) {
    if (inputForm != null) {
      return inputForm(this);
    }
    return orElse();
  }
}

abstract class _InputFormEvent implements HomeEvent {
  const factory _InputFormEvent(
      {required final String name,
      required final String value,
      required final ExpenseType type}) = _$_InputFormEvent;

  String get name;
  String get value;
  ExpenseType get type;
  @JsonKey(ignore: true)
  _$$_InputFormEventCopyWith<_$_InputFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isExpanded) progress,
    required TResult Function() initial,
    required TResult Function(String errorMessage) invalidInput,
    required TResult Function() addSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isExpanded)? progress,
    TResult Function()? initial,
    TResult Function(String errorMessage)? invalidInput,
    TResult Function()? addSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isExpanded)? progress,
    TResult Function()? initial,
    TResult Function(String errorMessage)? invalidInput,
    TResult Function()? addSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeState value) progress,
    required TResult Function(_Initial value) initial,
    required TResult Function(_InvalidInput value) invalidInput,
    required TResult Function(_AddItemSuccessfully value) addSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeState value)? progress,
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidInput value)? invalidInput,
    TResult Function(_AddItemSuccessfully value)? addSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? progress,
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidInput value)? invalidInput,
    TResult Function(_AddItemSuccessfully value)? addSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  $Res call({bool isExpanded});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? isExpanded = freezed,
  }) {
    return _then(_$_HomeState(
      isExpanded: isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState({required this.isExpanded});

  @override
  final bool isExpanded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.progress(isExpanded: $isExpanded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.progress'))
      ..add(DiagnosticsProperty('isExpanded', isExpanded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other.isExpanded, isExpanded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isExpanded));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isExpanded) progress,
    required TResult Function() initial,
    required TResult Function(String errorMessage) invalidInput,
    required TResult Function() addSuccessfully,
  }) {
    return progress(isExpanded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isExpanded)? progress,
    TResult Function()? initial,
    TResult Function(String errorMessage)? invalidInput,
    TResult Function()? addSuccessfully,
  }) {
    return progress?.call(isExpanded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isExpanded)? progress,
    TResult Function()? initial,
    TResult Function(String errorMessage)? invalidInput,
    TResult Function()? addSuccessfully,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(isExpanded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeState value) progress,
    required TResult Function(_Initial value) initial,
    required TResult Function(_InvalidInput value) invalidInput,
    required TResult Function(_AddItemSuccessfully value) addSuccessfully,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeState value)? progress,
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidInput value)? invalidInput,
    TResult Function(_AddItemSuccessfully value)? addSuccessfully,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? progress,
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidInput value)? invalidInput,
    TResult Function(_AddItemSuccessfully value)? addSuccessfully,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({required final bool isExpanded}) = _$_HomeState;

  bool get isExpanded;
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isExpanded) progress,
    required TResult Function() initial,
    required TResult Function(String errorMessage) invalidInput,
    required TResult Function() addSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isExpanded)? progress,
    TResult Function()? initial,
    TResult Function(String errorMessage)? invalidInput,
    TResult Function()? addSuccessfully,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isExpanded)? progress,
    TResult Function()? initial,
    TResult Function(String errorMessage)? invalidInput,
    TResult Function()? addSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeState value) progress,
    required TResult Function(_Initial value) initial,
    required TResult Function(_InvalidInput value) invalidInput,
    required TResult Function(_AddItemSuccessfully value) addSuccessfully,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeState value)? progress,
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidInput value)? invalidInput,
    TResult Function(_AddItemSuccessfully value)? addSuccessfully,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? progress,
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidInput value)? invalidInput,
    TResult Function(_AddItemSuccessfully value)? addSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InvalidInputCopyWith<$Res> {
  factory _$$_InvalidInputCopyWith(
          _$_InvalidInput value, $Res Function(_$_InvalidInput) then) =
      __$$_InvalidInputCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_InvalidInputCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_InvalidInputCopyWith<$Res> {
  __$$_InvalidInputCopyWithImpl(
      _$_InvalidInput _value, $Res Function(_$_InvalidInput) _then)
      : super(_value, (v) => _then(v as _$_InvalidInput));

  @override
  _$_InvalidInput get _value => super._value as _$_InvalidInput;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_InvalidInput(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidInput with DiagnosticableTreeMixin implements _InvalidInput {
  const _$_InvalidInput({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.invalidInput(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.invalidInput'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidInput &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidInputCopyWith<_$_InvalidInput> get copyWith =>
      __$$_InvalidInputCopyWithImpl<_$_InvalidInput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isExpanded) progress,
    required TResult Function() initial,
    required TResult Function(String errorMessage) invalidInput,
    required TResult Function() addSuccessfully,
  }) {
    return invalidInput(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isExpanded)? progress,
    TResult Function()? initial,
    TResult Function(String errorMessage)? invalidInput,
    TResult Function()? addSuccessfully,
  }) {
    return invalidInput?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isExpanded)? progress,
    TResult Function()? initial,
    TResult Function(String errorMessage)? invalidInput,
    TResult Function()? addSuccessfully,
    required TResult orElse(),
  }) {
    if (invalidInput != null) {
      return invalidInput(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeState value) progress,
    required TResult Function(_Initial value) initial,
    required TResult Function(_InvalidInput value) invalidInput,
    required TResult Function(_AddItemSuccessfully value) addSuccessfully,
  }) {
    return invalidInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeState value)? progress,
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidInput value)? invalidInput,
    TResult Function(_AddItemSuccessfully value)? addSuccessfully,
  }) {
    return invalidInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? progress,
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidInput value)? invalidInput,
    TResult Function(_AddItemSuccessfully value)? addSuccessfully,
    required TResult orElse(),
  }) {
    if (invalidInput != null) {
      return invalidInput(this);
    }
    return orElse();
  }
}

abstract class _InvalidInput implements HomeState {
  const factory _InvalidInput({required final String errorMessage}) =
      _$_InvalidInput;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_InvalidInputCopyWith<_$_InvalidInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddItemSuccessfullyCopyWith<$Res> {
  factory _$$_AddItemSuccessfullyCopyWith(_$_AddItemSuccessfully value,
          $Res Function(_$_AddItemSuccessfully) then) =
      __$$_AddItemSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddItemSuccessfullyCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_AddItemSuccessfullyCopyWith<$Res> {
  __$$_AddItemSuccessfullyCopyWithImpl(_$_AddItemSuccessfully _value,
      $Res Function(_$_AddItemSuccessfully) _then)
      : super(_value, (v) => _then(v as _$_AddItemSuccessfully));

  @override
  _$_AddItemSuccessfully get _value => super._value as _$_AddItemSuccessfully;
}

/// @nodoc

class _$_AddItemSuccessfully
    with DiagnosticableTreeMixin
    implements _AddItemSuccessfully {
  const _$_AddItemSuccessfully();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.addSuccessfully()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.addSuccessfully'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddItemSuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isExpanded) progress,
    required TResult Function() initial,
    required TResult Function(String errorMessage) invalidInput,
    required TResult Function() addSuccessfully,
  }) {
    return addSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isExpanded)? progress,
    TResult Function()? initial,
    TResult Function(String errorMessage)? invalidInput,
    TResult Function()? addSuccessfully,
  }) {
    return addSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isExpanded)? progress,
    TResult Function()? initial,
    TResult Function(String errorMessage)? invalidInput,
    TResult Function()? addSuccessfully,
    required TResult orElse(),
  }) {
    if (addSuccessfully != null) {
      return addSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeState value) progress,
    required TResult Function(_Initial value) initial,
    required TResult Function(_InvalidInput value) invalidInput,
    required TResult Function(_AddItemSuccessfully value) addSuccessfully,
  }) {
    return addSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeState value)? progress,
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidInput value)? invalidInput,
    TResult Function(_AddItemSuccessfully value)? addSuccessfully,
  }) {
    return addSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? progress,
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidInput value)? invalidInput,
    TResult Function(_AddItemSuccessfully value)? addSuccessfully,
    required TResult orElse(),
  }) {
    if (addSuccessfully != null) {
      return addSuccessfully(this);
    }
    return orElse();
  }
}

abstract class _AddItemSuccessfully implements HomeState {
  const factory _AddItemSuccessfully() = _$_AddItemSuccessfully;
}
