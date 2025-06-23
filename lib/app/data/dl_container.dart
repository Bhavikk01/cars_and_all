import 'package:cars_and_all/app/controller/auth_controller.dart';
import 'package:cars_and_all/app/controller/home_nav_controller.dart';
import 'package:cars_and_all/app/controller/user_controller.dart';
import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:cars_and_all/app/interfaces/auth_interface.dart';
import 'package:cars_and_all/app/repository/auth_repo.dart';
import 'package:cars_and_all/app/repository/user_repo.dart';
import 'package:cars_and_all/app/screens/cibil/controller/cibilController.dart';
import 'package:cars_and_all/app/screens/filter/controller/filterController.dart';
import 'package:cars_and_all/app/screens/home/controllers/home_controller.dart';
import 'package:cars_and_all/app/screens/home/controllers/serviceController.dart';
import 'package:cars_and_all/app/screens/insurance/controller/insuranceFormController.dart';
import 'package:cars_and_all/app/screens/payment/controller/paymentController.dart';
import 'package:cars_and_all/app/screens/search/controller/search_controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../interfaces/user_interface.dart';
import '../screens/car_details/controller/carDetailController.dart';
import '../screens/car_details/controller/emiController.dart';
import '../screens/financialAssistance/controller/financialAssistController.dart';
import '../utils/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {

  /// Local Storage Services
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  /// API CLIENT Services
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => DioClient(dio: sl()));

  /// Authentication Services
  sl.registerLazySingleton(() => AuthRepo(dio: sl(), sharedPref: sl()));
  AuthInterface authInterface = AuthRepo(dio  : sl(), sharedPref: sl());
  sl.registerLazySingleton(() => authInterface);
  sl.registerLazySingleton(() => AuthController(authInterface: sl()));


  sl.registerLazySingleton(() => BottomNavController());

  /// User Storage Service
  sl.registerLazySingleton(() => UserRepo(dio: sl(), sharedPref: sl()));
  UserInterface userInterface = UserRepo(sharedPref: sl(), dio: sl());
  sl.registerLazySingleton(() => userInterface);
  sl.registerLazySingleton(() => UserController(userInterface: sl()));

  /// Network Connectivity Services
  sl.registerLazySingleton(() => Connectivity());
  sl.registerLazySingleton(() => NetworkInfo(sl()));

  sl.registerLazySingleton(() => HomeController(dio: sl()));
  sl.registerLazySingleton(() => ServiceController(dio: sl()));
  sl.registerLazySingleton(() => SearchController(dio: sl()));

  sl.registerLazySingleton(() => CarDetailController(dio: sl()));

  sl.registerLazySingleton(() => FilterController(dio: sl()));
  sl.registerLazySingleton(() => EmiController(dio: sl()));
  sl.registerLazySingleton(() => PaymentController(dio: sl()));
  sl.registerLazySingleton(() => InsuranceFormController(dio: sl()));
  sl.registerLazySingleton(() => FinancialAssistController(dio: sl()));
  sl.registerLazySingleton(() => CibilController(dio: sl()));


}