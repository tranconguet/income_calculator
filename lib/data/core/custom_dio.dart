import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

const baseUrl = 'https://6346cfc9745bd0dbd3871617.mockapi.io/api';
const defaultReceiveTimeout = 15000;
const defaultConnectTimeout = 15000;
const defaultSendTimeout = 15000;

///
/// Customize Http request
///
abstract class CustomDio {
  static Dio get instance => _client ?? _createDio();
  static Dio? _client;
  static CookieManager get cookieManagerInstance => _cookieManager!; // for temp
  static CookieManager? _cookieManager;

  final Options _options;
  final String _path;

  CustomDio(this._path, {Options? options})
      : _options = options ??
            Options(
              responseType: ResponseType.plain,
              receiveTimeout: defaultReceiveTimeout,
              sendTimeout: defaultSendTimeout,
            );

  Future<Response<T>> customRequest<T>({required RequestOptions requestOptions}) {
    return instance.fetch<T>(requestOptions);
  }

  /// 
  /// Customize GET request
  /// 
  Future<Response<T>> get<T>({
    required String requestPath,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return instance.get<T>('$_path/$requestPath',
        queryParameters: queryParameters,
        options: options ?? _options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress);
  }

  /// 
  /// Customize POST request
  /// 
  Future<Response<T>> post<T>({
    required String requestPath,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return instance.post<T>('$_path/$requestPath',
        data: data,
        queryParameters: queryParameters,
        options: options ?? _options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);
  }

  Future<Response<T>> update<T>({required String requestPath}) {
    return instance.get<T>('$_path/$requestPath', options: _options);
  }

  Future<Response<T>> delete<T>({required String requestPath}) {
    return instance.get<T>('$_path/$requestPath', options: _options);
  }

  static Dio _createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        responseType: ResponseType.plain,
        receiveTimeout: defaultReceiveTimeout,
        connectTimeout: defaultConnectTimeout,
        sendTimeout: defaultSendTimeout,
      ),
    );
    final cookieManager = CookieManager(CookieJar());
    dio.interceptors.addAll({
      cookieManager,
      AppInterceptors(dio),
    });
    // _cookieManager = cookieManager;
    _client = dio;
    return dio;
  }
}

class AppInterceptors extends Interceptor {
  final Dio dio;

  AppInterceptors(this.dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    //TODO()
    return handler.next(options);
  }
}
