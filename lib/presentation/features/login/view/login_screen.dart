import 'package:income_calculator/data/datasource/auth/auth_api.dart';
import 'package:income_calculator/data/datasource/auth/auth_local_datasource.dart';
import 'package:income_calculator/data/datasource/auth/auth_remote_datasource.dart';
import 'package:income_calculator/data/datasource/auth/mapper/login_result_mapper.dart';
import 'package:income_calculator/data/datasource/auth/mapper/user_info_mapper.dart';
import 'package:income_calculator/data/repository_impl/auth_repository_impl.dart';
import 'package:income_calculator/domain/core/data_result.dart';
import 'package:income_calculator/domain/entities/user/user_info.dart';
import 'package:income_calculator/domain/repository/auth_repository.dart';
import 'package:income_calculator/domain/usecase/get_user_info_use_case.dart';
import 'package:income_calculator/domain/usecase/login_use_case.dart';
import 'package:income_calculator/presentation/features/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final AuthRepository _authRepository = AuthRepositoryImpl(
    AuthRemoteDataSourceImpl(AuthApi()),
    LoginResultMapper(),
    AuthLocalDataSourceImpl(),
    UserInfoMapper(),
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(
        LoginUseCase(_authRepository),
        GetUserInfoUseCase(_authRepository),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hello world'),
        ),
        body: Center(
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (blocContext, state) {
              return FutureBuilder<DataResult<UserInfo>>(
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final result = snapshot.data as DataResult<UserInfo>;
                    if (result.isSuccess) {
                      return Text('Success result: ${(snapshot.data as DataResult).data.toString()}');
                    } else {
                      return Text('Failed result: ${(snapshot.data as DataResult).data.toString()}');
                    }
                  } else if (!snapshot.hasData) {
                    return const CircularProgressIndicator();
                  }
                  return const Text('Empty widget');
                },
                future: blocContext.read<LoginBloc>().getUserInfo(),
              );
            },
          ),
        ),
      ),
    );
  }
}
