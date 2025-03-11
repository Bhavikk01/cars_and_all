import 'package:cars_and_all/app/constants/text_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/api/api_client.dart';
import '../data/api/model/api_response.dart';
import '../interfaces/auth_interface.dart';

class AuthRepo implements AuthInterface {
  final DioClient? dio;
  final SharedPreferences? sharedPref;

  AuthRepo({required this.dio, required this.sharedPref});

  // @override
  // Future<ApiResponse> registration(Map<String, dynamic> register) async {}
  //
  // @override
  // Future<ApiResponse> login(Map<String, dynamic> loginBody) async {}
  //
  // @override
  // Future<ApiResponse> logout() async {}
  //
  // @override
  // Future<void> saveUserToken(String token) async {}
  //
  // @override
  // String getUserToken() {
  //   return sharedPreferences!.getString(ConstantData.userBearerToken) ?? "";
  // }
  //
  // @override
  // bool isLoggedIn() {
  //   return sharedPreferences!.containsKey(ConstantData.userBearerToken);
  // }
  //
  // @override
  // Future<bool> clearUserData() async {
  //   sharedPreferences?.remove(ConstantData.userBearerToken);
  //   sharedPreferences?.remove(ConstantData.userIdKey);
  //   return true;
  // }
  //
  // @override
  // Future<ApiResponse> verifyEmail(
  //     String email, String token, String tempToken) async {}
  //
  // @override
  // Future<ApiResponse> sendOtpToPhone(
  //     String phone, String temporaryToken) async {}
  //
  // @override
  // Future<ApiResponse> resendPhoneOtp(
  //     String phone, String temporaryToken) async {}
  //
  // @override
  // Future<ApiResponse> verifyPhone(
  //     String phone, String token, String otp) async {}
  //
  // @override
  // Future<ApiResponse> verifyOtp(String identity, String otp) async {}
  //
  // @override
  // Future<ApiResponse> resetPassword(String identity, String otp,
  //     String password, String confirmPassword) async {}
  //
  // @override
  // Future<void> saveUserData(String uid) async {}
  //
  // @override
  // String getUserEmail() {}
  //
  // @override
  // String getUserPassword() {}
  //
  // @override
  // Future<ApiResponse> forgetPassword(String identity) async {}

}
