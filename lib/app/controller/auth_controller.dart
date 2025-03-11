import 'package:flutter/material.dart';

import '../data/api/model/api_response.dart';
import '../interfaces/auth_interface.dart';
import '../models/user_model.dart';

class AuthController with ChangeNotifier {
  final AuthInterface authInterface;

  AuthController({required this.authInterface});

  // Future registration(RegisterModel register, Function callback) async {}
  //
  // Future logOut() async {
  //   ApiResponse apiResponse = await authInterface.logout();
  //   if (apiResponse.data != null && apiResponse.isSuccess) {}
  // }
  //
  // Future<void> login(LoginModel loginBody, Function callback) async {}
  //
  // Future<ResponseModel> sendOtpToPhone(String phone, String temporaryToken,
  //     {bool fromResend = false}) async {}
  //
  // Future<ApiResponse> verifyPhone(String phone, String token) async {}
  //
  // Future<ApiResponse> verifyOtpForResetPassword(String phone) async {}
  //
  // Future<ApiResponse> resetPassword(String identity, String otp,
  //     String password, String confirmPassword) async {}
  //
  // String _email = '';
  // String _phone = '';
  //
  // String get email => _email;
  //
  // String get phone => _phone;
  //
  // updateEmail(String email) {
  //   _email = email;
  //   notifyListeners();
  // }
  //
  // updatePhone(String phone) {
  //   _phone = phone;
  //   notifyListeners();
  // }
  //
  // String getUserToken() {
  //   return authInterface.getUserToken();
  // }
  //
  // bool isLoggedIn() {
  //   return authInterface.isLoggedIn();
  // }
  //
  // Future<bool> clearUserData() {
  //   return authInterface.clearSharedData();
  // }
  //
  // Future<ApiResponse> forgetPassword(String email) async {}
  //
  //
  // void saveUserEmail(UserModel userModel) {
  //   authInterface.saveUserData(userModel);
  // }
}
