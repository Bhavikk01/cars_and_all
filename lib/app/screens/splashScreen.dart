
import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';
import 'package:video_player/video_player.dart';

import '../../shared/color/app_color.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {

  @override
  void initState() {


    Future.delayed(Duration(seconds: 5), () {
      if (ref.read(userProvider)!.uid.isEmpty) {
        Get.toNamed(AppRoutes.getStarted);
      } else {
        Get.toNamed(AppRoutes.home);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      color: AppColors.backgroundColor,
      child: Center(
        child: Image.asset(
          AssetConstant.appAnimatedLogo,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
