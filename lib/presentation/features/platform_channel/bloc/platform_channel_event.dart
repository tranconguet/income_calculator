part of 'platform_channel_bloc.dart';

@freezed
class PlatformChannelEvent with _$PlatformChannelEvent {
  const factory PlatformChannelEvent.started() = _Started;
}