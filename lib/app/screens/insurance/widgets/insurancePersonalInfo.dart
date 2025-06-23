import 'dart:developer';

import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../../utils/scale_utility.dart';

class InsurancePersonalInfo extends StatelessWidget {
  const InsurancePersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: scale.getMargin(
            horizontal: 24,
            vertical: 15
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'First Name',
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
                    fontSize: scale.getScaledFont(14),
                    color: AppColors.black828282,
                  ),
                  decoration: InputDecoration(
                    hintText: 'First name',
                    fillColor: AppColors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: scale.getScaledHeight(20),
              ),
              Text(
                'Last Name',
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
                    fontSize: scale.getScaledFont(14),
                    color: AppColors.black828282,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Last name',
                    fillColor: AppColors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: scale.getScaledHeight(20),
              ),
              Text(
                'Date of Birth',
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
                  onTapAlwaysCalled: true,
                  onTap: () {
                    ///TODO: Have to add functionality for selecting date of birth.
                  },
                  readOnly: true,
                  initialValue: '25 - January - 1890',
                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.black828282,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Select your date of birth',
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
            ],
          ),
        ),
      ),
    );
  }
}
