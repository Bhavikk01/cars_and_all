import 'package:cars_and_all/app/screens/auth/signup/sign_up.dart';
import 'package:cars_and_all/app/screens/home/home_screen.dart';
import 'package:cars_and_all/app/screens/onboarding/getStarted.dart';
import 'package:go_router/go_router.dart';

import '../screens/auth/login/loginScreen.dart';
import '../screens/onboarding/userSelection.dart';
import '../screens/splashScreen.dart';
import 'app_routes.dart';

class AppRouter {
  GoRouter get router => _router;

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.login.path,
        name: AppRoutes.login.name,
        builder: (context, state) => const SignInScreen(),
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.signUpScreen.path,
        name: AppRoutes.signUpScreen.name,
        builder: (context, state) => const SignUpScreen(),
        routes: [],
      ),


      GoRoute(
        path: AppRoutes.getStarted.path,
        name: AppRoutes.getStarted.name,
        builder: (context, state) => const GetStarted(),
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.userSelection.path,
        name: AppRoutes.userSelection.name,
        builder: (context, state) => const UserSelection(),
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.home.path,
        name: AppRoutes.home.name,
        builder: (context, state) => const HomeScreen(),
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.splashScreen.path,
        name: AppRoutes.splashScreen.name,
        builder: (context, state) => const SplashScreen(),
        routes: [],
      ),
    ],
    initialLocation: AppRoutes.splashScreen.path,
  );
}
