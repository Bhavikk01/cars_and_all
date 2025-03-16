import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/constants/colors.dart';
import 'package:cars_and_all/app/constants/themes.dart';
import 'package:cars_and_all/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/scale_utility.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();
    return Scaffold(
      backgroundColor: ColorConstant.splashBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetConstant.appLogo,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: scale.getScaledHeight(253),
        padding: scale.getPadding(top: 35, bottom: 75, left: 23, right: 23),
        decoration: BoxDecoration(
          color: ColorConstant.primaryColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(scale.getScaledFont(60)),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Get Started',
              style: ThemeConstant.txtPoppins18White500,
            ),
            Text(
              'Loreum ipsum loreum ipsum',
              style: ThemeConstant.txtPoppins12White300,
            ),
            InkWell(
              onTap: () {
                context.go(AppRoutes.userSelection.path);
              },
              child: Container(
                width: double.maxFinite,
                alignment: Alignment.center,
                margin: scale.getMargin(
                  top: 40,
                ),
                padding: scale.getPadding(
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ColorConstant.buttonWhiteGradient,
                      ColorConstant.buttonBlueGradient,
                    ],
                    stops: const [
                      0.44,
                      1.19,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(scale.getScaledFont(73))
                ),
                child: Text(
                  '> > Swipe > >',
                  style: ThemeConstant.txtPoppins18Black500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
