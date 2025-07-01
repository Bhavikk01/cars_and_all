import 'package:cars_and_all/app/controller/auth_controller.dart';
import 'package:cars_and_all/app/controller/home_nav_controller.dart';
import 'package:cars_and_all/app/controller/user_controller.dart';
import 'package:cars_and_all/app/screens/car_details/controller/emiController.dart';
import 'package:cars_and_all/app/screens/cibil/controller/cibilController.dart';
import 'package:cars_and_all/app/screens/filter/controller/filterController.dart';
import 'package:cars_and_all/app/screens/financialAssistance/controller/financialAssistController.dart';
import 'package:cars_and_all/app/screens/home/controllers/home_controller.dart';
import 'package:cars_and_all/app/screens/home/controllers/serviceController.dart';
import 'package:cars_and_all/app/screens/insurance/controller/insuranceFormController.dart';
import 'package:cars_and_all/app/screens/search/controller/search_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cars_and_all/app/data/dl_container.dart' as di;

import '../screens/car_details/controller/carDetailController.dart';
import '../screens/home/controllers/category_controller.dart';
import '../screens/payment/controller/paymentController.dart';


ChangeNotifierProvider<AuthController?> authProvider = ChangeNotifierProvider<AuthController?>((ref) {
  return di.sl();
});

ChangeNotifierProvider<UserController?> userProvider = ChangeNotifierProvider<UserController?>((ref) {
  return di.sl();
});

ChangeNotifierProvider<BottomNavController?> navProvider = ChangeNotifierProvider<BottomNavController?>((ref) {
  return di.sl();
});

ChangeNotifierProvider<HomeController?> homeProvider = ChangeNotifierProvider<HomeController?>((ref) {
  return di.sl();
});
ChangeNotifierProvider<CategoryController?> categoryProvider = ChangeNotifierProvider<CategoryController?>((ref) {
  return di.sl();
});
ChangeNotifierProvider<ServiceController?> serviceScreenProvider = ChangeNotifierProvider<ServiceController?>((ref) {
  return di.sl();
});

ChangeNotifierProvider<SearchController?> searchProvider = ChangeNotifierProvider<SearchController?>((ref) {
  return di.sl();
});

ChangeNotifierProvider<CarDetailController?> carDetailProvider = ChangeNotifierProvider<CarDetailController?>((ref) {
  return di.sl();
});

ChangeNotifierProvider<FilterController?> filterProvider = ChangeNotifierProvider<FilterController?>((ref) {
  return di.sl();
});

ChangeNotifierProvider<EmiController?> emiCalculatorProvider = ChangeNotifierProvider<EmiController?>((ref) {
  return di.sl();
});

ChangeNotifierProvider<PaymentController?> paymentController = ChangeNotifierProvider<PaymentController?>((ref) {
  return di.sl();
});

ChangeNotifierProvider<InsuranceFormController?> insuranceFormController = ChangeNotifierProvider<InsuranceFormController?>((ref) {
  return di.sl();
});

ChangeNotifierProvider<FinancialAssistController?> financialAssistProvider = ChangeNotifierProvider<FinancialAssistController?>((ref) {
  return di.sl();
});

ChangeNotifierProvider<CibilController?> cibilProvider = ChangeNotifierProvider<CibilController?>((ref) {
  return di.sl();
});