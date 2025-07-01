import 'package:cars_and_all/app/screens/auth/signup/sign_up.dart';
import 'package:cars_and_all/app/screens/cibil/cibilLandingScreen.dart';
import 'package:cars_and_all/app/screens/financialAssistance/financialAssistanceLandingScreen.dart';
import 'package:cars_and_all/app/screens/home/home_nav_screen.dart';
import 'package:cars_and_all/app/screens/insurance/compareInsuranceQuote.dart';
import 'package:cars_and_all/app/screens/onboarding/get_started.dart';
import 'package:cars_and_all/app/screens/payment/addAddressScreen.dart';
import 'package:cars_and_all/app/screens/payment/addressSelectionScreen.dart';
import 'package:cars_and_all/app/screens/payment/initialPaymentScreen.dart';
import 'package:cars_and_all/app/screens/payment/paymentCheckoutScreen.dart';
import 'package:cars_and_all/app/screens/payment/paymentMethodSelection.dart';
import 'package:cars_and_all/app/screens/search/search_screen.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../screens/auth/login/login_with_email_screen.dart';
import '../screens/auth/login/login_with_phone_screen.dart';
import '../screens/car_details/carDetailScreen.dart';
import '../screens/cibil/addVehicleDetailsScreen.dart';
import '../screens/cibil/cibilScoreScreen.dart';
import '../screens/cibil/getVehicleDetailsScreen.dart';
import '../screens/cibil/personalInfoScreen.dart';
import '../screens/emergencyScreen.dart';
import '../screens/filter/filterScreen.dart';
import '../screens/financialAssistance/applicationStatusScreen.dart';
import '../screens/financialAssistance/financialAssistFormScreen.dart';
import '../screens/financialAssistance/trackLoanStatusScreen.dart';
import '../screens/financialAssistance/uploadFinancialDocumentScreen.dart';
import '../screens/home/views/home_screen.dart';
import '../screens/home/views/servicesScreen.dart';
import '../screens/insurance/insuranceFormScreen.dart';
import '../screens/insurance/uploadDocumentScreen.dart';
import '../screens/medicalEmergency.dart';
import '../screens/nearbyMechanicsScreen.dart';
import '../screens/onboarding/user_selection.dart';
import '../screens/roadSideAssistance.dart';
import '../screens/serviceHistoryScreen.dart';
import '../screens/splashScreen.dart';
import '../screens/towingServoceScreen.dart';
import 'app_routes.dart';

class AppRouter {

  static final router = [
    GetPage(
      name: AppRoutes.loginWithPhone,
      page: () => const LoginWithPhoneScreen(),
    ),
    GetPage(
      name: AppRoutes.loginWithEmail,
      page: () => const LoginWithEmailScreen(),
    ),
    GetPage(
      name: AppRoutes.signUpScreen,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: AppRoutes.getStarted,
      page: () => const GetStarted(),
    ),
    GetPage(
      name: AppRoutes.userSelection,
      page: () => const UserSelection(),
    ),
    GetPage(
      name: AppRoutes.homeNav,
      page: () => const HomeNavScreen(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.splashScreen,
      page: () => const SplashScreen(),
    ),

    GetPage(
      name: AppRoutes.searchScreen,
      page: () => const SearchScreen(),
    ),
    GetPage(
      name: AppRoutes.carDetailScreen,
      page: () => const CarDetailScreen(),
    ),

    GetPage(
      name: AppRoutes.filterScreen,
      page: () => const FilterScreen(),
    ),

    GetPage(
      name: AppRoutes.initialPaymentScreen,
      page: () => const InitialPaymentScreen(),
    ),

    GetPage(
      name: AppRoutes.addressSelectionScreen,
      page: () => const AddressSelectionScreen(),
    ),

    GetPage(
      name: AppRoutes.addAddressScreen,
      page: () => const AddAddressScreen(),
    ),
    GetPage(
      name: AppRoutes.paymentMethodSelection,
      page: () => const PaymentMethodSelection(),
    ),
    GetPage(
      name: AppRoutes.paymentCheckoutScreen,
      page: () => const PaymentCheckoutScreen(),
    ),
    GetPage(
      name: AppRoutes.insuranceFormScreen,
      page: () => const InsuranceFormScreen(),
    ),
    GetPage(
      name: AppRoutes.compareInsuranceQuote,
      page: () => const CompareInsuranceQuote(),
    ),
    GetPage(
      name: AppRoutes.uploadDocumentScreen,
      page: () => const UploadDocumentScreen(),
    ),
    GetPage(
      name: AppRoutes.financialAssistLandingScreen,
      page: () => const FinancialAssistanceLandingScreen(),
    ),
    GetPage(
      name: AppRoutes.financialAssistFormScreen,
      page: () => const FinancialAssistFormScreen(),
    ),
    GetPage(
      name: AppRoutes.uploadFinancialDocumentScreen,
      page: () => const UploadFinancialDocumentScreen(),
    ),
    GetPage(
      name: AppRoutes.applicationStatusScreen,
      page: () => const ApplicationStatusScreen(),
    ),
    GetPage(
      name: AppRoutes.trackLoanStatusScreen,
      page: () => const TrackLoanStatusScreen(),
    ),
    GetPage(
      name: AppRoutes.cibilPersonalInfoScreen,
      page: () => const CibilPersonalInfoScreen(),
    ),
    GetPage(
      name: AppRoutes.getVehicleDetailsScreen,
      page: () => const GetVehicleDetailsScreen(),
    ),
    GetPage(
      name: AppRoutes.addVehicleDetailsScreen,
      page: () => const AddVehicleDetailsScreen(),
    ),
    GetPage(
      name: AppRoutes.medicalEmergency,
      page: () => const MedicalEmergency(),
    ),
    GetPage(
      name: AppRoutes.emergencyScreen,
      page: () => const EmergencyScreen(),
    ),
    GetPage(
      name: AppRoutes.roadSideAssistance,
      page: () => const RoadSideAssistance(),
    ),
    GetPage(
      name: AppRoutes.nearbyMechanicsScreen,
      page: () => const NearbyMechanicsScreen(),
    ),
    GetPage(
      name: AppRoutes.towingServiceScreen,
      page: () => const TowingServiceScreen(),
    ),
    GetPage(
      name: AppRoutes.serviceHistoryScreen,
      page: () => const ServiceHistoryScreen(),
    ),
    GetPage(
      name: AppRoutes.serviceScreen,
      page: () => const ServicesScreen(),
    ),
    GetPage(
      name: AppRoutes.cibilLandingScreen,
      page: () => const CibilLandingScreen(),
    ),
    GetPage(
      name: AppRoutes.cibilScoreScreen,
      page: () => const CibilScoreScreen(),
    ),
  ];
}
