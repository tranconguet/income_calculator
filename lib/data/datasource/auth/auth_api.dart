import 'package:income_calculator/data/core/custom_dio.dart';
import 'package:dio/dio.dart';

class AuthApi extends CustomDio {
  AuthApi() : super('');

  Future<Response<Map<String, dynamic>>> login(String userName, String password) async {
    return post(requestPath: '/login', queryParameters: {
      'user_name': userName,
      'password': password,
    });
  }

  Future<Response<Map<String, dynamic>>> getUserInfo() async {
    return get(requestPath: '/user');
  }
}
