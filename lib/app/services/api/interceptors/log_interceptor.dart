import 'package:cars_and_all/app/utils/logger.dart';
import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  final _logger = Logger("LoggingInterceptor 🔥");

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.log('Request: ${options.method} ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _logger.log('Error: ${err.message}');
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.log('Response: ${response.statusCode} ${response.data}');
    super.onResponse(response, handler);
  }
}
