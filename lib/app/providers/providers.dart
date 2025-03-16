import 'package:cars_and_all/app/controller/auth_controller.dart';
import 'package:cars_and_all/app/controller/user_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cars_and_all/app/data/dl_container.dart' as di;


Provider<AuthController?> authProvider = Provider<AuthController?>((ref) {
  return di.sl();
});

Provider<UserController?> userProvider = Provider<UserController?>((ref) {
  return di.sl();
});