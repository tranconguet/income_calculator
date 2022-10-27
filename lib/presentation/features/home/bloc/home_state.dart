part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.progress({
    required bool isExpanded,
  }) = _HomeState;
  const factory HomeState.initial() = _Initial;
  const factory HomeState.invalidInput({required String errorMessage}) = _InvalidInput;
  const factory HomeState.addSuccessfully() = _AddItemSuccessfully;
}
