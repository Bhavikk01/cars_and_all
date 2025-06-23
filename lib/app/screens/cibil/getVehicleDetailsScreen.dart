import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/theme/custom_text_style.dart';
import '../../constants/assetConstant.dart';
import '../../utils/scale_utility.dart';

class GetVehicleDetailsScreen extends ConsumerStatefulWidget {
  const GetVehicleDetailsScreen({super.key});

  @override
  ConsumerState<GetVehicleDetailsScreen> createState() => _GetVehicleDetailsScreenState();
}

class _GetVehicleDetailsScreenState extends ConsumerState<GetVehicleDetailsScreen> {

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
                  'Get Vehicle Details',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  bottom: 20,
                ),
                child: Text(
                  'Your information is safe and encrypted.',
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vehicle Number',
                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                          fontSize: scale.getScaledFont(12),
                          color: AppColors.black828282,
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(5),
                      ),
                      Padding(
                        padding: scale.getPadding(horizontal: 3),
                        child: TextFormField(
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.black828282,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Enter your Vehicle number',
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
                      SizedBox(
                        height: scale.getScaledHeight(24),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AssetConstant.carIcon2,
                                height: scale.getScaledHeight(20),
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
                          Icon(
                            Icons.mode_edit_outline_outlined,
                            color: AppColors.black828282,
                            size: scale.getScaledHeight(15),
                          )
                        ],
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: scale.getMargin(
                          vertical: 10,
                        ),
                        padding: scale.getPadding(
                          bottom: 5,
                          top: 16,
                          left: 10,
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: AppColors.secondaryLight,
                            width: 1,
                          )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Owner Name',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    'John Doe',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.primaryLight,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Vehicle Make & Model',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    'Honda City',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Fuel Type',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    'Petrol',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Registration Date',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    '15 Jun 2020',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Vehicle Class',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    'LMV',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Engine Number',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    'EN12345678',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Chassis Number',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    'CH98765432',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: scale.getMargin(
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Registration Valid Till',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
                                    ),
                                  ),
                                  Text(
                                    '14 Jun 2025',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(10),
                                      color: AppColors.black,
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
                          top: 20,
                          bottom: 15,
                        ),
                        width: double.maxFinite,
                        height: scale.getScaledHeight(40),
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text(
                            'Manual Entry Instead',
                            style: CustomTextStyle.txtPoppins12Black500.copyWith(
                              fontSize: scale.getScaledFont(12),
                              color: AppColors.white,
                            ),
                          ),
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
    );
  }
}
