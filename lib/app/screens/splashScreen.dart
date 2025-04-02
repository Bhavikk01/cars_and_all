
import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/extensions/spacing_extension.dart';
import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/routes/app_routes.dart';
import 'package:cars_and_all/app/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:video_player/video_player.dart';

import '../../shared/color/app_color.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {


  late VideoPlayerController _controller;

  @override
  void initState() {

    _controller = VideoPlayerController.asset(AssetConstant.appSplash);
    _controller.initialize().then((_) {
      _controller.play();
      setState(() {});
    });

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
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      color: AppColors.splashBackground,
      child: Center(
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(
            _controller,
          ),
        ),
      ),
    );
  }
}
