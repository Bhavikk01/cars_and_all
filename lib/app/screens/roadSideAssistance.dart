import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/theme/custom_text_style.dart';
import '../constants/assetConstant.dart';
import '../utils/scale_utility.dart';
import 'car_details/widgets/makeAnOfferScreen.dart';

class RoadSideAssistance extends StatelessWidget {
  const RoadSideAssistance({super.key});

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
                  'Roadside Assistance',
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DecoratedContainer(
                                width: scale.getScaledWidth(137),
                                height: scale.getScaledHeight(75),
                                padding: scale.getPadding(
                                  all: 10,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      AssetConstant.carBreakdownIcon,
                                      height: scale.getScaledHeight(17),
                                    ),
                                    SizedBox(
                                      height: scale.getScaledHeight(8),
                                    ),
                                    Text(
                                      'Breakdown',
                                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                        fontSize: scale.getScaledFont(13),
                                        color: AppColors.primaryLight,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              DecoratedContainer(
                                width: scale.getScaledWidth(137),
                                height: scale.getScaledHeight(75),
                                padding: scale.getPadding(
                                  all: 10,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      AssetConstant.flatTyreIcon,
                                      height: scale.getScaledHeight(23),
                                    ),
                                    SizedBox(
                                      height: scale.getScaledHeight(8),
                                    ),
                                    Text(
                                      'Flat tyre',
                                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                        fontSize: scale.getScaledFont(13),
                                        color: AppColors.primaryLight,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: scale.getScaledHeight(8),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DecoratedContainer(
                                width: scale.getScaledWidth(137),
                                height: scale.getScaledHeight(75),
                                padding: scale.getPadding(
                                  all: 10,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      AssetConstant.batteryIcon,
                                      height: scale.getScaledHeight(17),
                                    ),
                                    SizedBox(
                                      height: scale.getScaledHeight(8),
                                    ),
                                    Text(
                                      'Battery',
                                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                        fontSize: scale.getScaledFont(13),
                                        color: AppColors.primaryLight,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              DecoratedContainer(
                                width: scale.getScaledWidth(137),
                                height: scale.getScaledHeight(75),
                                padding: scale.getPadding(
                                  all: 10,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      AssetConstant.fuelIcon,
                                      height: scale.getScaledHeight(23),
                                    ),
                                    SizedBox(
                                      height: scale.getScaledHeight(8),
                                    ),
                                    Text(
                                      'Fuel',
                                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                        fontSize: scale.getScaledFont(13),
                                        color: AppColors.primaryLight,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
                              AssetConstant.carIcon2,
                              color: AppColors.secondaryLight,
                              height: scale.getScaledHeight(24),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(10),
                            ),
                            Text(
                              'Vehicle Information',
                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: scale.getScaledFont(14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(7),
                      ),
                      DecoratedContainer(
                        padding: scale.getPadding(
                          horizontal: 10,
                          vertical: 26,
                        ),
                        margin: EdgeInsets.zero,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: scale.getScaledFont(20),
                              backgroundColor: AppColors.secondaryLight.withOpacity(0.1),
                              child: SvgPicture.asset(
                                AssetConstant.carIcon2,
                                color: AppColors.secondaryLight,
                                height: scale.getScaledHeight(24),
                              ),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(6),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Vehicle',
                                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                    fontSize: scale.getScaledFont(14),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Toyota Camry (2020)',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(10),
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff6C6C6C),
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: scale.getScaledHeight(22),
                      ),
                      Text(
                        'Describe your issue...',
                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                          fontSize: scale.getScaledFont(12),
                          color: AppColors.black828282,
                        ),
                      ),
                      Padding(
                        padding: scale.getPadding(top: 11),
                        child: TextFormField(
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.black828282,
                            fontSize: scale.getScaledFont(14),
                          ),
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              color: AppColors.black828282,
                              fontWeight: FontWeight.w400,
                            ),
                            hintText: '',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffBDBDBD),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffBDBDBD),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Color(0xffBDBDBD),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Color(0xffBDBDBD),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: scale.getMargin(
                          vertical: 20,
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
                                '  Request Assisstance',
                                style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontSize: scale.getScaledFont(12),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: scale.getMargin(
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
                              'Safety tips',
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
                                    'Turn on hazard lights and move to a safe location',
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
                                    "Stay inside your vehicle if possible",
                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black2020.withOpacity(0.70),
                                      fontSize: scale.getScaledFont(12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: scale.getPadding(
          horizontal: 20,
          vertical: 20,
        ),
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: scale.getScaledWidth(150),
              padding: scale.getPadding(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.secondaryLight,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  padding: scale.getPadding(
                    vertical: 20,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.wifi_calling_3_outlined,
                      color: AppColors.primaryLight,
                    ),
                    SizedBox(
                      width: scale.getScaledWidth(10),
                    ),
                    Text(
                      'Call Support',
                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                        color: AppColors.primaryLight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: scale.getScaledWidth(150),
              padding: scale.getPadding(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(6),
              ),
              child: ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  padding: scale.getPadding(
                    vertical: 20,
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AssetConstant.chatIcon,
                      color: AppColors.white,
                    ),
                    SizedBox(
                      width: scale.getScaledWidth(10),
                    ),
                    Text(
                      'Chat Support',
                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
