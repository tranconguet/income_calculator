import 'package:income_calculator/domain/core/data_result.dart';
import 'package:income_calculator/domain/models/login/login_result.dart';
import 'package:income_calculator/domain/models/user/user_info.dart';
import 'package:income_calculator/domain/usecase/get_user_info_use_case.dart';
import 'package:income_calculator/domain/usecase/login_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;
  final GetUserInfoUseCase _getUserInfoUseCase;

  LoginBloc(
    this._loginUseCase,
    this._getUserInfoUseCase,
  ) : super(const _Initial()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  void login() {
    _loginUseCase(params: const LoginParams(userName: 'userName', password: 'password'));
  }

  Future<DataResult<UserInfo>> getUserInfo() async {
    final result = await _getUserInfoUseCase(params: null);
    print('result $result');
    return result;
  }
}
