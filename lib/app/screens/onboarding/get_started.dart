
import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/routes/app_routes.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/color/app_color.dart';
import '../../utils/scale_utility.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();
    return Scaffold(
      backgroundColor: AppColors.splashBackground,
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
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(scale.getScaledFont(60)),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Get Started',
              style: CustomTextStyle.txtPoppins18White500,
            ),
            Text(
              'Loreum ipsum loreum ipsum',
              style: CustomTextStyle.txtPoppins12White300,
            ),
            InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.userSelection);
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
                      AppColors.buttonWhiteGradient,
                      AppColors.buttonBlueGradient,
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
                  style: CustomTextStyle.txtPoppins18Black500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
