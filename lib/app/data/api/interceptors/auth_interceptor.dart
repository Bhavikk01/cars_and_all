import 'dart:convert';
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  String? _authToken;

  String? _userName;
  String? _password;

  AuthInterceptor.token(this._authToken);

  AuthInterceptor.basicAuth(this._userName, this._password);

  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_authToken != null) {
      options.headers['Authorization'] = 'Bearer $_authToken';
    } else if (_userName != null && _password != null) {
      String basicAuth = 'Basic ' + base64Encode(utf8.encode('$_userName:$_password'));
      options.headers['Authorization'] = basicAuth;
    }

    super.onRequest(options, handler);
  }
}
