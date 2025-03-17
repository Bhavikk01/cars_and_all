import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/controller/auth_controller.dart';
import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../constants/colors.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      if (ref.read(userProvider)!.uid.isEmpty) {
        context.go(AppRoutes.getStarted.path);
      } else {
        context.go(AppRoutes.home.path);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      color: ColorConstant.splashBackground,
      child: Center(
        child: Image.asset(AssetConstant.appSplash),
      ),
    );
  }
}
