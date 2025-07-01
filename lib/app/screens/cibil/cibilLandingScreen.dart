import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../shared/theme/custom_text_style.dart';
import '../../constants/assetConstant.dart';
import '../../routes/app_routes.dart';
import '../../utils/scale_utility.dart';
import '../../widgets/decoratedContainer.dart';

class CibilLandingScreen extends StatefulWidget {
  const CibilLandingScreen({super.key});

  @override
  State<CibilLandingScreen> createState() => _CibilLandingScreenState();
}

class _CibilLandingScreenState extends State<CibilLandingScreen> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: scale.getMargin(
            horizontal: 22,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Image.asset(
                  AssetConstant.arrowBack,
                  color: AppColors.black,
                  height: scale.getScaledHeight(15),
                ),
                padding: EdgeInsets.zero,
              ),
              Container(
                margin: scale.getMargin(
                  top: 8,
                ),
                child: Text(
                  'Check my CIBIL Score',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  bottom: 5,
                ),
                child: Text(
                  'Instantly view your credit score and improve your financial health.',
                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                    fontSize: scale.getScaledFont(13),
                    fontWeight: FontWeight.w400,
                    color: Color(0xff828282),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: scale.getMargin(
                          top: 45,
                          bottom: 24,
                        ),
                        padding: scale.getPadding(
                          all: 40,
                        ),
                        height: scale.getScaledHeight(280),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff273441),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                AssetConstant.cibilMetreImage,
                              ),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '670',
                                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontSize: scale.getScaledFont(32),
                                  color: AppColors.white,
                                ),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(5),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    AssetConstant.cibilPointerRed,
                                    color: Colors.red,
                                    height: scale.getScaledHeight(10),
                                  ),
                                  Text(
                                    '20',
                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontSize: scale.getScaledFont(12),
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Good 👍',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontSize: scale.getScaledFont(24),
                            color: AppColors.primaryLight,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(16),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Generated 18th July',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontSize: scale.getScaledFont(16),
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'VantageScore 3.0 credit score by equifax',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontSize: scale.getScaledFont(12),
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(27),
                      ),
                      DecoratedContainer(
                        height: scale.getScaledHeight(93),
                        padding: scale.getPadding(
                          all: 10,
                        ),
                        margin: scale.getMargin(
                          bottom: 27,
                          left: 3,
                          right: 3,
                        ),
                        fillColor: Colors.transparent,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: scale.getScaledFont(17),
                              backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                              child: SvgPicture.asset(
                                AssetConstant.successIcon,
                                height: scale.getScaledHeight(18),
                                color: AppColors.secondaryLight,
                              ),
                            ),
                            Container(
                              width: scale.getScaledWidth(176),
                              margin: scale.getMargin(
                                top: 5,
                                left: 16,
                                right: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Know your credit eligibility',
                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontSize: scale.getScaledFont(14),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Get instant insights about your loan approval chances',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      DecoratedContainer(
                        height: scale.getScaledHeight(93),
                        padding: scale.getPadding(
                          all: 10,
                        ),
                        margin: scale.getMargin(
                          bottom: 27,
                          left: 3,
                          right: 3,
                        ),
                        fillColor: Colors.transparent,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: scale.getScaledFont(17),
                              backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                              child: SvgPicture.asset(
                                AssetConstant.loanRefinance,
                                height: scale.getScaledHeight(30),
                              ),
                            ),
                            Container(
                              width: scale.getScaledWidth(176),
                              margin: scale.getMargin(
                                top: 5,
                                left: 16,
                                right: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Know your credit eligibility',
                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontSize: scale.getScaledFont(14),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Get instant insights about your loan approval chances',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      DecoratedContainer(
                        height: scale.getScaledHeight(93),
                        padding: scale.getPadding(
                          all: 10,
                        ),
                        margin: scale.getMargin(
                          bottom: 8,
                          left: 3,
                          right: 3,
                        ),
                        fillColor: Colors.transparent,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: scale.getScaledFont(17),
                              backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                              child: SvgPicture.asset(
                                AssetConstant.securityIcon,
                                height: scale.getScaledHeight(18),
                                color: AppColors.secondaryLight,
                              ),
                            ),
                            Container(
                              width: scale.getScaledWidth(176),
                              margin: scale.getMargin(
                                top: 5,
                                left: 16,
                                right: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Know your credit eligibility',
                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontSize: scale.getScaledFont(14),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Get instant insights about your loan approval chances',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: scale.getMargin(
                          bottom: 20,
                          top: 25,
                        ),
                        width: double.maxFinite,
                        height: scale.getScaledHeight(40),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.cibilPersonalInfoScreen);
                          },
                          child: Text(
                            'Check My Score',
                            style: CustomTextStyle.txtPoppins16Black500.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                              fontSize: scale.getScaledFont(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.lock_outline,
                              color: AppColors.black828282,
                              size: scale.getScaledWidth(12),
                            ),
                            Container(
                              margin: scale.getMargin(
                                left: 5,
                              ),
                              width: scale.getScaledWidth(180),
                              child: Text(
                                'We use secure APIs to fetch your score from authorized credit bureaus',
                                textAlign: TextAlign.center,
                                style: CustomTextStyle.txtPoppins10W400.copyWith(
                                  fontSize: scale.getScaledFont(9),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
