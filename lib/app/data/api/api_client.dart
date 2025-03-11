import 'package:cars_and_all/app/constants/text_data.dart';
import 'package:cars_and_all/app/utils/logger.dart';
import 'package:dio/dio.dart';
import 'api_routes.dart';
import 'interceptors/log_interceptor.dart';
import 'model/api_response.dart';

/// DIO CLIENT PROVIDER

class DioClient {
  final Dio _dio;
  final _logger = Logger("DioClient");

  DioClient({required Dio dio}) : _dio = dio {

    _dio.options.baseUrl = ApiRoutes.baseUrl;

    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 30);
    setDefaultHeader();

    _dio.interceptors.addAll([
      LoggingInterceptor(),
    ]);
  }

  void updateHeader(String? token) {
    _dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  void setDefaultHeader() {
    _dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
    };
  }

  Future<ApiResponse<T>> get<T>(String endPoint,
      {Map<String, dynamic>? queryParameter}) async {
    return await _sendRequest<T>(() => _dio.get(endPoint, queryParameters: queryParameter));
  }

  Future<ApiResponse<T>> post<T>(String endPoint, {dynamic data}) async {
    return await _sendRequest<T>(() => _dio.post(endPoint, data: data));
  }

  Future<ApiResponse<T>> put<T>(String endPoint, {dynamic data}) async {
    return await _sendRequest<T>(() => _dio.put(endPoint, data: data));
  }

  Future<ApiResponse<T>> delete<T>(String endPoint, {dynamic data}) async {
    return await _sendRequest<T>(() => _dio.delete(endPoint, data: data));
  }

  Future<ApiResponse<T>> patch<T>(String endPoint, {dynamic data}) async {
    return await _sendRequest<T>(() => _dio.patch(endPoint, data: data));
  }

  Future<ApiResponse<T>> _sendRequest<T>(
      Future<Response> Function() request) async {
    try {
      final response = await request();
      return _handleResponse<T>(response);
    } on DioException catch (e) {
      return ApiResponse<T>(errorMessage: _handleError(e));
    }
  }

  ApiResponse<T> _handleResponse<T>(Response response) {
    switch (response.statusCode) {
      case 200:
        return ApiResponse<T>(data: response.data);
      case 400:
        return ApiResponse<T>(errorMessage: 'Bad request: ${response.data}');
      case 401:
        return ApiResponse<T>(errorMessage: 'Unauthorized access');
      case 404:
        return ApiResponse<T>(errorMessage: 'Not found');
      case 500:
      default:
        return ApiResponse<T>(
            errorMessage: 'Server error: ${response.statusCode}');
    }
  }

  String _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ConstantData.connectionTimeout;

      case DioExceptionType.sendTimeout:
        _logger.log(ConstantData.sendTimeout);
        return ConstantData.sendTimeout;
      case DioExceptionType.receiveTimeout:
        _logger.log(ConstantData.receiveTimeout);
        return ConstantData.receiveTimeout;
      case DioExceptionType.badResponse:
        _logger
            .log("${ConstantData.invalidStatusCode}: ${error.response?.statusCode}");
        return "${ConstantData.invalidStatusCode}: ${error.response?.statusCode}";
      case DioExceptionType.cancel:
        _logger.log(ConstantData.requestCancelled);
        return ConstantData.requestCancelled;

      default:
        _logger.log("Unexpected error: ${error.message}");
        return"Unexpected error: ${error.message}";
    }
  }

}
