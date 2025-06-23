import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/theme/custom_text_style.dart';
import '../constants/assetConstant.dart';
import '../utils/scale_utility.dart';

class MedicalEmergency extends StatelessWidget {
  const MedicalEmergency({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: scale.getMargin(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
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
                  'Medical Emergency',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  top: 8,
                  bottom: 15,
                ),
                padding: scale.getPadding(
                  all: 10,
                ),
                color: AppColors.secondaryLight,
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColors.black,
                      size: scale.getScaledHeight(15),
                    ),
                    SizedBox(
                      width: scale.getScaledWidth(5),
                    ),
                    Text(
                      'Current Location: 123 Main Street',
                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                        fontSize: scale.getScaledFont(13),
                        fontWeight: FontWeight.w400,
                        color: AppColors.black2020,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DecoratedContainer(
                            width: scale.getScaledWidth(135),
                            height: scale.getScaledHeight(100),
                            fillColor: AppColors.primaryLight,
                            borderColor: AppColors.primaryLight,
                            padding: scale.getPadding(
                              all: 10,
                            ),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: scale.getScaledFont(15),
                                  child: SvgPicture.asset(
                                    AssetConstant.callingIcon,
                                  ),
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(8),
                                ),
                                Text(
                                  'Call Ambulance',
                                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                    fontSize: scale.getScaledFont(13),
                                    color: AppColors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(4),
                                ),
                                Text(
                                  'Emergency:911',
                                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                    fontSize: scale.getScaledFont(10),
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          DecoratedContainer(
                            width: scale.getScaledWidth(135),
                            height: scale.getScaledHeight(100),
                            fillColor: AppColors.white,
                            borderColor: AppColors.primaryLight,
                            padding: scale.getPadding(
                              all: 10,
                            ),
                            margin: scale.getMargin(
                              all: 3,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: scale.getScaledHeight(2),
                                ),
                                SvgPicture.asset(
                                  AssetConstant.buildingIcon,
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(8),
                                ),
                                Text(
                                  'Locate Hospitals',
                                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                    fontSize: scale.getScaledFont(13),
                                    color: AppColors.primaryLight,
                                  ),
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(4),
                                ),
                                Text(
                                  'Find nearby',
                                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                    fontSize: scale.getScaledFont(10),
                                    color: AppColors.primaryLight,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: scale.getMargin(
                          top: 35,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              AssetConstant.buildingIcon,
                              color: AppColors.secondaryLight,
                              height: scale.getScaledHeight(15),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(10),
                            ),
                            Text(
                              'Nearby Hospitals',
                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: scale.getScaledFont(14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(5),
                      ),
                      ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return DecoratedContainer(
                            padding: scale.getPadding(
                              vertical: 20,
                              horizontal: 10,
                            ),
                            margin: scale.getMargin(
                              vertical: 5,
                              horizontal: 2,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: scale.getScaledFont(20),
                                      backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                                      child: SvgPicture.asset(
                                        AssetConstant.buildingIcon,
                                        color: AppColors.secondaryLight,
                                        height: scale.getScaledHeight(15),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(10),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(190),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'City general hospital',
                                        style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: scale.getScaledFont(14),
                                        ),
                                      ),
                                      Text(
                                        '0.8 miles away',
                                        style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: scale.getScaledFont(10),
                                          color: Color(0xff6C6C6C),
                                        ),
                                      ),
                                      Text(
                                        '456 Healthcare Ave',
                                        style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: scale.getScaledFont(10),
                                          color: Color(0xff6C6C6C),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CircleAvatar(
                                        radius: scale.getScaledFont(9),
                                        backgroundColor: AppColors.primaryLight,
                                        child: SvgPicture.asset(
                                          AssetConstant.callingIcon,
                                          height: scale.getScaledHeight(8),
                                        ),
                                      ),
                                      SizedBox(
                                        width: scale.getScaledWidth(5),
                                      ),
                                      CircleAvatar(
                                        radius: scale.getScaledFont(9),
                                        backgroundColor: AppColors.secondaryLight,
                                        child: Icon(
                                          Icons.location_on_outlined,
                                          size: scale.getScaledHeight(8),
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      Container(
                        margin: scale.getMargin(
                          top: 35,
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              AssetConstant.ideaIcon,
                              color: AppColors.secondaryLight,
                              height: scale.getScaledHeight(15),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(5),
                            ),
                            Text(
                              'Emergency tips',
                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: scale.getScaledFont(14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      DecoratedContainer(
                        padding: scale.getPadding(
                            horizontal: 8,
                            vertical: 13
                        ),
                        width: double.maxFinite,
                        margin: scale.getMargin(
                            bottom: 10,
                            left: 2,
                            right: 2
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AssetConstant.successIcon,
                                  color: AppColors.greenCheckColor,
                                  height: scale.getScaledHeight(15),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(5),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(270),
                                  child: Text(
                                    'Stay calm and assess the situation',
                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black2020.withOpacity(0.70),
                                      fontSize: scale.getScaledFont(12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: scale.getScaledHeight(8),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AssetConstant.successIcon,
                                  color: AppColors.greenCheckColor,
                                  height: scale.getScaledHeight(15),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(5),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(270),
                                  child: Text(
                                    "Keep hazard lights on if in vehicle",
                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black2020.withOpacity(0.70),
                                      fontSize: scale.getScaledFont(12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: scale.getScaledHeight(8),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AssetConstant.successIcon,
                                  color: AppColors.greenCheckColor,
                                  height: scale.getScaledHeight(15),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(5),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(270),
                                  child: Text(
                                    "Share exact location with emergency services",
                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black2020.withOpacity(0.70),
                                      fontSize: scale.getScaledFont(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: scale.getMargin(
                          vertical: 10,
                        ),
                        height: scale.getScaledHeight(40),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shield_outlined,
                                color: AppColors.white,
                                size: scale.getScaledFont(18),
                              ),
                              Text(
                                '  Other Emergency Services',
                                style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontSize: scale.getScaledFont(12),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
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
            ],
          ),
        ),
      ),
    );
  }
}
