import 'dart:developer';

import 'package:flutter/material.dart';

import '../interfaces/auth_interface.dart';
import '../models/enum/user_type.dart';
class AuthController with ChangeNotifier {
  final AuthInterface authInterface;

  AuthController({required this.authInterface});

  UserType _userType = UserType.INDIVIDUAL;

  UserType get userType => _userType;

  void updateUserSelection(UserType userSelection){
    _userType = userSelection;
    log("updating the value $userType");
    notifyListeners();
  }

  @override
  void dispose() {
    // Perform any cleanup here
    print('ScreenController disposed!');
    super.dispose();
  }

}
