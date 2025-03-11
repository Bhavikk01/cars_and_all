import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:cars_and_all/app/data/api/api_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/text_data.dart';
import '../interfaces/user_interface.dart';

class UserRepo implements UserInterface {
  final SharedPreferences _prefs;
  final DioClient dio;

  UserRepo({required SharedPreferences sharedPref, required this.dio}) : _prefs = sharedPref;

  @override
  getUserById(String id) {
    return dio.get('${ApiRoutes.getUserById}?id=$id');
  }

  @override
  removeUserSession() {
    _prefs.remove(ConstantData.userIdKey);
    _prefs.remove(ConstantData.userBearerToken);
  }

  @override
  getUserId() {
    return _prefs.getString(ConstantData.userIdKey)?? '';
  }

  @override
  getUserToken() {
    return _prefs.getString(ConstantData.userBearerToken)?? '';
  }
}