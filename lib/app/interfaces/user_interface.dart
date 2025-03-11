import 'package:cars_and_all/app/data/api/model/api_response.dart';

abstract class UserInterface {
  Future<ApiResponse> getUserById(String id);
  String getUserId();
  String getUserToken();
  void removeUserSession();
}
