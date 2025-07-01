import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';

import '../../../shared/theme/custom_text_style.dart';
import '../../constants/assetConstant.dart';
import '../../routes/app_routes.dart';
import '../../utils/scale_utility.dart';

class CibilPersonalInfoScreen extends ConsumerStatefulWidget {
  const CibilPersonalInfoScreen({super.key});

  @override
  ConsumerState<CibilPersonalInfoScreen> createState() => _CibilPersonalInfoScreenState();
}

class _CibilPersonalInfoScreenState extends ConsumerState<CibilPersonalInfoScreen> {

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
                  'Enter Personal Details',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  bottom: 45,
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
                        'Full Name',
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
                            hintText: 'Enter your full name',
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
                        height: scale.getScaledHeight(15),
                      ),
                      Text(
                        'Mobile Number',
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
                            hintText: 'Enter your Mobile Number',
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
                        height: scale.getScaledHeight(15),
                      ),
                      Text(
                        'Email ID',
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
                            hintText: 'Enter Email Address',
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
                        height: scale.getScaledHeight(15),
                      ),
                      Text(
                        'PAN Number',
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
                            hintText: 'Enter PAN Number',
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
                        height: scale.getScaledHeight(20),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Checkbox(
                              value: ref.watch(cibilProvider)!.agreeTerms,
                              onChanged: (value) {
                                ref.watch(cibilProvider)!.updateTermsConditions(value ?? false);
                              },
                              fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                                if (states.contains(WidgetState.selected)) {
                                  return AppColors.secondaryLight;
                                }
                                return Colors.transparent;
                              }),
                              activeColor: const Color(0xFFFFC107),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              side: BorderSide(color: Colors.grey.shade300, width: 2),
                              materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'I authorize access to my credit information from CIBIL.',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(9),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: scale.getMargin(
                          top: 20,
                          bottom: 15,
                        ),
                        width: double.maxFinite,
                        height: scale.getScaledHeight(40),
                        child: ElevatedButton(
                          onPressed: (){
                            Get.toNamed(AppRoutes.cibilScoreScreen);
                          },
                          child: Text(
                            'Fetch Score',
                            style: CustomTextStyle.txtPoppins12Black500.copyWith(
                              fontSize: scale.getScaledFont(12),
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.lock_outline,
                            color: Color(0xff9DB2CE),
                            size: scale.getScaledHeight(13),
                          ),
                          SizedBox(
                            width: scale.getScaledWidth(174),
                            child: Text(
                              'We do not store your data. Used only for verification via bureau.',
                              textAlign: TextAlign.center,
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                color: AppColors.black.withOpacity(0.70),
                              ),
                            ),
                          )
                        ],
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
