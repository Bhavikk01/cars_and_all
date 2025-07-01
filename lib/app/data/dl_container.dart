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
import '../screens/home/controllers/category_controller.dart';
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


  sl.registerLazySingleton(() => BottomNavController());

  /// User Storage Service
  sl.registerLazySingleton(() => UserRepo(dio: sl(), sharedPref: sl()));
  UserInterface userInterface = UserRepo(sharedPref: sl(), dio: sl());
  sl.registerLazySingleton(() => userInterface);

  /// Network Connectivity Services
  sl.registerLazySingleton(() => Connectivity());
  sl.registerLazySingleton(() => NetworkInfo(sl()));

  ///Provider Controller
  sl.registerFactory(() => AuthController(authInterface: sl()));
  sl.registerFactory(() => UserController(userInterface: sl()));
  sl.registerFactory(() => HomeController(dio: sl()));
  sl.registerFactory(() => ServiceController(dio: sl()));
  sl.registerFactory(() => CategoryController(dio: sl()));
  sl.registerFactory(() => SearchController(dio: sl()));
  sl.registerFactory(() => CarDetailController(dio: sl()));
  sl.registerFactory(() => FilterController(dio: sl()));
  sl.registerFactory(() => EmiController(dio: sl()));
  sl.registerFactory(() => PaymentController(dio: sl()));
  sl.registerFactory(() => InsuranceFormController(dio: sl()));
  sl.registerFactory(() => FinancialAssistController(dio: sl()));
  sl.registerFactory(() => CibilController(dio: sl()));

}