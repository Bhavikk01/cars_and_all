import 'package:cars_and_all/app/utils/logger.dart';
import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  final _logger = Logger("LoggingInterceptor 🔥");

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.log('=========================================================================');
    _logger.log('Request: ${options.method}');
    _logger.log('Path: ${options.path}');
    _logger.log('Header: ${options.headers}');
    _logger.log('Data: ${options.data}');
    _logger.log('=========================================================================');
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _logger.log('Error: ${err.message}');
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.log('=========================================================================');
    _logger.log('Status: ${response.statusCode} ${response.data}');
    _logger.log('Data: ${response.data}');
    _logger.log('=========================================================================');
    super.onResponse(response, handler);
  }
}
