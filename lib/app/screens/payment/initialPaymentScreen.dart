import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math' as math;

import '../../providers/providers.dart';
import '../../utils/scale_utility.dart';

class InitialPaymentScreen extends StatelessWidget {
  const InitialPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: scale.getPadding(
            left: 23,
            right: 23,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.white,
                    child: Icon(
                      Icons.arrow_back_outlined,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.white,
                        child: Icon(
                          Icons.share_outlined,
                        ),
                      ),
                      SizedBox(
                        width: scale.getScaledWidth(10),
                      ),
                      CircleAvatar(
                        backgroundColor: AppColors.white,
                        child: Icon(
                          Icons.favorite_border,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: scale.getScaledHeight(10),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      Text(
                        'Payment',
                        style: CustomTextStyle.txtPoppins18Black500.copyWith(
                          fontSize: scale.getScaledFont(20),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: scale.getScaledWidth(60),
                            child: Divider(
                              color: Color(0xff555555),
                              thickness: 0.8,
                            ),
                          ),
                          Transform(
                            alignment: Alignment.center, // Center the rotation
                            transform: Matrix4.rotationZ(
                              math.pi / 4,
                            ), //
                            child: Container(
                              height: scale.getScaledHeight(8),
                              width: scale.getScaledWidth(8),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Color(0xff555555),
                                  )
                              ),
                            ),
                          ),
                          SizedBox(
                            width: scale.getScaledWidth(60),
                            child: Divider(
                              color: Color(0xff555555),
                              thickness: 0.8,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(15),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: scale.getMargin(
                                right: 10
                            ),
                            height: scale.getScaledHeight(100),
                            width: scale.getScaledWidth(100),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: DecorationImage(
                                image: AssetImage(
                                  AssetConstant.carImage,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: scale.getScaledHeight(5),
                              ),
                              Text(
                                'BMW 3 Series 2024',
                                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '320i M Sport',
                                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Color: Alpine White',
                                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(15),
                      ),
                      Divider(
                        color: AppColors.black.withOpacity(0.1),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(20),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: scale.getMargin(
                          vertical: 5,
                        ),
                        padding: scale.getPadding(
                          top: 20,
                          left: 5,
                          right: 5,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.secondaryLight,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: scale.getPadding(
                                horizontal: 15,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Component',
                                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                          fontSize: scale.getScaledFont(12),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      margin: scale.getMargin(
                                        right: 25,
                                      ),
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        'Amount',
                                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                          fontSize: scale.getScaledFont(12),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: scale.getScaledHeight(10),
                            ),
                            MediaQuery.removePadding(
                              context: context,
                              removeBottom: true,
                              removeTop: true,
                              child: Consumer(
                                  builder: (context, ref, child) {
                                    var loanSummaryController = ref.watch(paymentController);
                                    return ListView.builder(
                                      itemCount: loanSummaryController!.paymentInitialComponent.length,
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        return Container(
                                          margin: scale.getMargin(
                                            bottom: 10,
                                            right: 35,
                                            left: 19,
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    loanSummaryController.paymentInitialComponent[index],
                                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                                      fontSize: scale.getScaledFont(10),
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Align(
                                                  alignment: Alignment.topRight,
                                                  child: Text(
                                                    loanSummaryController.paymentInitialComponentAmount[index],
                                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                                      fontSize: scale.getScaledFont(10),
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  }
                              ),
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: scale.getScaledHeight(10),
                            ),
                            Container(
                              padding: scale.getPadding(
                                left: 20,
                                right: 20,
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'TOTAL',
                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '₹47,55,000',
                                    style: CustomTextStyle.txtPoppins18Black500.copyWith(
                                      fontSize: scale.getScaledFont(16),
                                      color: AppColors.primaryLight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: scale.getMargin(
                          vertical: 15,
                        ),
                        padding: scale.getPadding(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        color: AppColors.white,
                        child: Column(
                          children: [
                            Container(
                              margin: scale.getMargin(
                                horizontal: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        AssetConstant.promoCodeIcon,
                                        height: scale.getScaledHeight(24),
                                      ),
                                      SizedBox(
                                        width: scale.getScaledWidth(10),
                                      ),
                                      Text(
                                        'Add promo code',
                                        style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'View offer',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primaryLight,
                                      fontSize: scale.getScaledFont(10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: scale.getMargin(
                                top: 14,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: scale.getScaledFont(12),
                                      ),
                                      decoration: InputDecoration(
                                        hintText: 'Enter Coupon Code',
                                        hintStyle: CustomTextStyle.txtPoppins12Black500.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: scale.getScaledFont(12),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: AppColors.secondaryLight,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: AppColors.secondaryLight,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: AppColors.secondaryLight,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: AppColors.secondaryLight,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: scale.getMargin(
                                      left: 8,
                                    ),
                                    height: scale.getScaledHeight(40),
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        padding: scale.getPadding(
                                          horizontal: 30,
                                        ),
                                      ),
                                      child: Text(
                                        'Apply',
                                        style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.white,
                                          fontSize: scale.getScaledFont(14),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
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
      bottomNavigationBar: Container(
        height: scale.getScaledHeight(95),
        padding: scale.getPadding(
          
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: scale.getPadding(
                  left: 40,
                  right: 40,
                  bottom: 10
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'TOTAL',
                      style: CustomTextStyle.txtPoppins14Black700.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '₹47,55,000',
                      style: CustomTextStyle.txtPoppins18Black500.copyWith(
                        fontSize: scale.getScaledFont(16),
                        color: AppColors.primaryLight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: scale.getScaledHeight(63),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )
                ),
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AssetConstant.cartIcon,
                      height: scale.getScaledFont(24),
                    ),
                    SizedBox(
                      width: scale.getScaledWidth(24),
                    ),
                    Text(
                      'CHECKOUT',
                      style: CustomTextStyle.txtPoppins16Black500.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
