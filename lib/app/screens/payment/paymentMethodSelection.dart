
import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:math' as math;

import '../../utils/scale_utility.dart';

class PaymentMethodSelection extends ConsumerStatefulWidget {
  const PaymentMethodSelection({super.key});

  @override
  ConsumerState<PaymentMethodSelection> createState() => _PaymentMethodSelectionState();
}

class _PaymentMethodSelectionState extends ConsumerState<PaymentMethodSelection> {
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: scale.getPadding(
                left: 23,
                right: 23,
              ),
              child: Row(
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
            ),
            SizedBox(
              height: scale.getScaledHeight(10),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Payment Method',
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
                      height: scale.getScaledHeight(25),
                    ),
                    SizedBox(
                      height: scale.getScaledHeight(190),
                      child: PageView.builder(
                        itemCount: 4,
                        controller: ref.read(paymentController)!.paymentMethodPageController,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: scale.getMargin(
                              horizontal: 5,
                            ),
                            padding: scale.getPadding(
                              all: 12,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff434343),
                                  AppColors.black,
                                ],
                                stops: [0.0, 1.0],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                    AssetConstant.mastercardImage,
                                    height: scale.getScaledHeight(32),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Iris Watson',
                                      style: CustomTextStyle.txtPoppins16Black500.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white,
                                        fontSize: scale.getScaledFont(16),
                                      ),
                                    ),
                                    Text(
                                      '03/25',
                                      style: CustomTextStyle.txtPoppins16Black500.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white,
                                        fontSize: scale.getScaledFont(16),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '2365 3654 2365 3698',
                                  style: CustomTextStyle.txtPoppins16Black500.copyWith(
                                    fontSize: scale.getScaledFont(16),
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        onPageChanged: (index) {
                          ref.read(paymentController)!.changePaymentMethodPageIndex(index);
                        },
                      ),
                    ),

                    Container(
                      margin: scale.getMargin(
                        top: 12,
                        bottom: 20,
                      ),
                      child: Wrap(
                        spacing: 10,
                        children: List.generate(4, (index) {
                          return Transform(
                            alignment: Alignment.center, // Center the rotation
                            transform: Matrix4.rotationZ(
                              math.pi / 4,
                            ), //
                            child: Container(
                              height: scale.getScaledHeight(8),
                              width: scale.getScaledWidth(8),
                              decoration: BoxDecoration(
                                  color: ref.watch(paymentController)!.paymentMethodIndex == index
                                      ? AppColors.secondaryLight
                                      : Colors.transparent,
                                  border: Border.all(
                                    color: ref.watch(paymentController)!.paymentMethodIndex == index
                                        ? AppColors.secondaryLight
                                        : Color(0xff555555),
                                  )
                              ),
                            ),
                          );
                        }),
                      )
                    ),
                    Container(
                      margin: scale.getMargin(
                        horizontal: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: scale.getMargin(
                              bottom: 20,
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Name On Card',
                                contentPadding: EdgeInsets.zero,
                                hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff979797),
                                  fontSize: scale.getScaledFont(14),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                              ),
                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: scale.getScaledFont(14),
                              ),
                            ),
                          ),
                          Container(
                            margin: scale.getMargin(
                              bottom: 20,
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'Card Number',
                                contentPadding: EdgeInsets.zero,
                                hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff979797),
                                  fontSize: scale.getScaledFont(14),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                              ),
                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: scale.getScaledFont(14),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'State',
                                    contentPadding: EdgeInsets.zero,
                                    hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff979797),
                                      fontSize: scale.getScaledFont(14),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffD4D4D4),
                                      ),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffD4D4D4),
                                      ),
                                    ),
                                    disabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffD4D4D4),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffD4D4D4),
                                      ),
                                    ),
                                    suffix: SvgPicture.asset(
                                      AssetConstant.dateIcon,
                                      height: scale.getScaledHeight(17),
                                    ),
                                  ),
                                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: scale.getScaledFont(14),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(22),
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Exp Date',
                                    contentPadding: EdgeInsets.zero,
                                    hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff979797),
                                      fontSize: scale.getScaledFont(14),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffD4D4D4),
                                      ),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffD4D4D4),
                                      ),
                                    ),
                                    disabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffD4D4D4),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffD4D4D4),
                                      ),
                                    ),
                                    suffix: SvgPicture.asset(
                                      AssetConstant.dateIcon,
                                      height: scale.getScaledHeight(17),
                                    ),
                                  ),
                                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: scale.getScaledFont(14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: scale.getMargin(
                              vertical: 20,
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'CVV',
                                contentPadding: EdgeInsets.zero,
                                hintStyle: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff979797),
                                  fontSize: scale.getScaledFont(14),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffD4D4D4),
                                  ),
                                ),
                                suffix: SvgPicture.asset(
                                  AssetConstant.securityIcon,
                                  height: scale.getScaledHeight(20),
                                ),
                              ),

                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: scale.getScaledFont(14),
                              ),
                            ),
                          ),
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
      bottomNavigationBar: SizedBox(
        height: scale.getScaledHeight(63),
        width: double.maxFinite,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              )
          ),
          onPressed: (){},
          child: Text(
            'ADD CARD',
            style: CustomTextStyle.txtPoppins16Black500.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
