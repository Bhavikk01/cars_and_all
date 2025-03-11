import 'package:cars_and_all/app/data/api/model/api_response.dart';
import 'package:cars_and_all/app/interfaces/user_interface.dart';
import 'package:cars_and_all/app/utils/logger.dart';
import 'package:flutter/cupertino.dart';
import '../models/user_model.dart';

class UserController extends ChangeNotifier {

  final UserInterface userInterface;

  late String uid;
  late String token;
  late bool isLogin = false;
  UserModel userProfile = UserModel();
  final Logger _logger = Logger('UserService');

  UserController({required this.userInterface}) {
    setCredentials();
    getUser();
  }

  void setCredentials(){
    uid = userInterface.getUserId();
    token = userInterface.getUserToken();
  }

  Future<void> getUser() async {
    if(uid.isNotEmpty){
      ApiResponse res = await userInterface.getUserById(uid);
      ///TODO: Have to implement this method
      setCredentials();
      isLogin = true;
    } else {
      _logger.log('No user present');
      isLogin = false;
    }
  }
}