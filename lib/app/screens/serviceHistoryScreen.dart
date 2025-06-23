import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:flutter/material.dart';

import '../../shared/theme/custom_text_style.dart';
import '../constants/assetConstant.dart';
import '../utils/scale_utility.dart';
import '../widgets/serviceHistoryTile.dart';

class ServiceHistoryScreen extends StatelessWidget {
  const ServiceHistoryScreen({super.key});

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
                  'Service History Check',
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
                ),
                child: Text(
                  'Track past maintenance and repairs done on your vehicle.',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(13),
                    fontWeight: FontWeight.w500,
                    color: AppColors.black828282,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: scale.getScaledHeight(12),
                      ),
                      Text(
                        'Vehicle Registration Number',
                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                          fontSize: scale.getScaledFont(12),
                          color: AppColors.black828282,
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(10),
                      ),
                      Padding(
                        padding: scale.getPadding(horizontal: 3),
                        child: TextFormField(
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.black828282,
                            fontSize: scale.getScaledFont(14),
                          ),
                          decoration: InputDecoration(
                            hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              color: AppColors.black828282,
                              fontWeight: FontWeight.w400,
                            ),
                            hintText: 'Enter your vehicle registration number',
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
                          vertical: 10,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'or',
                          style: CustomTextStyle.txtPoppins12Black500.copyWith(
                            fontSize: scale.getScaledFont(12),
                            color: AppColors.black828282,
                          ),
                        ),
                      ),
                      Text(
                        'VIN Number (Optional)',
                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                          fontSize: scale.getScaledFont(12),
                          color: AppColors.black828282,
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(10),
                      ),
                      Padding(
                        padding: scale.getPadding(horizontal: 3),
                        child: TextFormField(
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.black828282,
                            fontSize: scale.getScaledFont(14),
                          ),
                          decoration: InputDecoration(
                            hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                              fontSize: scale.getScaledFont(14),
                              color: AppColors.black828282,
                              fontWeight: FontWeight.w400,
                            ),
                            hintText: 'Enter VIN number',
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
                          top: 25,
                          bottom: 22,
                        ),
                        width: double.maxFinite,
                        height: scale.getScaledHeight(40),
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text(
                            'Fetch History',
                            style: CustomTextStyle.txtPoppins12Black500.copyWith(
                              fontSize: scale.getScaledFont(12),
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ServiceHistoryTile();
                        },
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
        margin: scale.getMargin(
          top: 10,
          bottom: 20,
          left: 20,
          right: 20,
        ),
        width: double.maxFinite,
        height: scale.getScaledHeight(40),
        child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondaryLight,
          ),
          child: Text(
            'Upload Manually',
            style: CustomTextStyle.txtPoppins12Black500.copyWith(
              fontSize: scale.getScaledFont(12),
              color: AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
