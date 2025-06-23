import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math' as math;

import '../../providers/providers.dart';
import '../../utils/scale_utility.dart';

class AddressSelectionScreen extends ConsumerStatefulWidget {
  const AddressSelectionScreen({super.key});

  @override
  ConsumerState<AddressSelectionScreen> createState() => _AddressSelectionScreenState();
}

class _AddressSelectionScreenState extends ConsumerState<AddressSelectionScreen> {
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
                        height: scale.getScaledHeight(10),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'SHIPPING ADDRESS',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: scale.getScaledFont(14),
                            color: Color(0xff888888),
                          ),
                        ),
                      ),
                      Container(
                        margin: scale.getMargin(
                          top: 5,
                          left: 18,
                          bottom: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Iris Watson',
                                  style: CustomTextStyle.txtPoppins18Black500.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(200),
                                  child: Text(
                                    '606-3727 Ullamcorper. Street Roseville NH 11523',
                                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff555555),
                                      fontSize: scale.getScaledFont(14),
                                    ),
                                  ),
                                ),
                                Text(
                                  '(786) 713-8616',
                                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff555555),
                                    fontSize: scale.getScaledFont(14),
                                  ),
                                ),

                              ],
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: scale.getPadding(
                          horizontal: 13,
                          vertical: 13,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(44),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Add shipping address',
                              style: CustomTextStyle.txtPoppins16Black500.copyWith(
                                color: Color(0xff555555),
                                fontWeight: FontWeight.w400,
                                fontSize: scale.getScaledFont(16),
                              ),
                            ),
                            Icon(
                              Icons.add,
                              size: scale.getScaledFont(25),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(30),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'PAYMENT METHOD',
                          style: CustomTextStyle.txtPoppins14Black700.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff888888),
                            fontSize: scale.getScaledFont(14),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(8),
                      ),
                      DropdownButtonFormField2<String>(
                        isDense: true,
                        value: ref.watch(paymentController)!.paymentMethod,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.white,
                          focusColor: AppColors.white,
                          contentPadding: scale.getPadding(vertical: 10),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(44),
                            borderSide: BorderSide(
                              color: AppColors.white,
                              width: 1,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(44),
                            borderSide: BorderSide(
                              color: AppColors.white,
                              width: 1,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(44),
                            borderSide: BorderSide(
                              color: AppColors.white,
                              width: 1,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(44),
                            borderSide: BorderSide(
                              color: AppColors.white,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(44),
                            borderSide: BorderSide(
                              color: AppColors.white,
                              width: 1,
                            ),
                          ),
                        ),
                        hint: Text(
                          'Select payment method',
                          style: CustomTextStyle.txtPoppins16Black500.copyWith(
                            color: Color(0xff555555),
                            fontWeight: FontWeight.w400,
                            fontSize: scale.getScaledFont(16),
                          ),
                        ),
                        items: ref.read(paymentController)?.allPaymentMethods.map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: CustomTextStyle.txtPoppins16Black500.copyWith(
                              color: Color(0xff555555),
                              fontWeight: FontWeight.w400,
                              fontSize: scale.getScaledFont(16),
                            ),
                          ),
                        )).toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please select a payment method';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          ref.read(paymentController)!.changePaymentMethod(value);
                        },
                        buttonStyleData: ButtonStyleData(
                          padding: scale.getPadding(right: 8),
                        ),
                        iconStyleData: IconStyleData(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black45,
                          ),
                          iconSize: scale.getScaledFont(24),
                        ),
                        dropdownStyleData: DropdownStyleData(
                          offset: Offset(0, -5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        menuItemStyleData: MenuItemStyleData(
                          padding: scale.getPadding(horizontal: 16),
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
