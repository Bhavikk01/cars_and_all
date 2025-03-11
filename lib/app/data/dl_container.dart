import 'package:cars_and_all/app/controller/auth_controller.dart';
import 'package:cars_and_all/app/controller/user_controller.dart';
import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:cars_and_all/app/interfaces/auth_interface.dart';
import 'package:cars_and_all/app/repository/auth_repo.dart';
import 'package:cars_and_all/app/repository/user_repo.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../interfaces/user_interface.dart';
import '../utils/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {

  /// Local Storage Services
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  /// API CLIENT Services
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => DioClient(dio: sl()));

  /// User Storage Service
  sl.registerLazySingleton(() => UserRepo(dio: sl(), sharedPref: sl()));
  UserInterface userInterface = UserRepo(sharedPref: sl(), dio: sl());
  sl.registerLazySingleton(() => userInterface);
  sl.registerLazySingleton(() => UserController(userInterface: sl()));

  /// Network Connectivity Services
  sl.registerLazySingleton(() => Connectivity());
  sl.registerLazySingleton(() => NetworkInfo(sl()));

  /// Authentication Services
  sl.registerLazySingleton(() => AuthRepo(dio: sl(), sharedPref: sl()));
  AuthInterface authInterface = AuthRepo(dio  : sl(), sharedPref: sl());
  sl.registerLazySingleton(() => authInterface);
  sl.registerLazySingleton(() => AuthController(authInterface: sl()));
}