import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'platform_channel_event.dart';
part 'platform_channel_state.dart';
part 'platform_channel_bloc.freezed.dart';

class PlatformChannelBloc extends Bloc<PlatformChannelEvent, PlatformChannelState> {
  PlatformChannelBloc() : super(_Initial()) {
    on<PlatformChannelEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
