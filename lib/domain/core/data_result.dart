///
/// This class present for result get from remote or local
/// 
/// [data] Data get from request
/// [message] message
/// 
abstract class DataResult<R> {
  final R? data;
  final String? message;

  DataResult(this.data, this.message);

  /// 
  /// Create success result
  /// 
  /// [data] Data get from request
  /// [message] String message
  /// 
  static DataResult<S> success<S>({S? data, String? message}) {
    return _SuccessResult(data, message);
  }

  /// 
  /// Create failed result
  /// 
  /// [data] Data if request failed but still has data from local or fake data
  /// [message] String message
  /// [exception] Exception if throw exception
  /// [errorData] If get api failed but still has data object
  /// 
  static DataResult<S> failed<S, E>({S? data, String? message, Exception? exception, E? errorData}) {
    return _FailedResult(data, message, exception, errorData);
  }

  bool get isSuccess => this is _SuccessResult;

  bool get isFailed => this is _FailedResult;
}

class _SuccessResult<R> extends DataResult<R> {
  _SuccessResult(super.data, super.message);
}

class _FailedResult<R, E> extends DataResult<R> {
  final Exception? exception;
  final E errorData;

  _FailedResult(super.data, super.message, this.exception, this.errorData);
}
