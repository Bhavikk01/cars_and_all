import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math' as math;

import '../../providers/providers.dart';
import '../../utils/scale_utility.dart';

class AddAddressScreen extends ConsumerStatefulWidget {
  const AddAddressScreen({super.key});

  @override
  ConsumerState<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends ConsumerState<AddAddressScreen> {
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
                        'Add Shipping Address',
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
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'First Name',
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
                          SizedBox(
                            width: scale.getScaledWidth(12),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Last Name',
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
                        ],
                      ),
                      Container(
                        margin: scale.getMargin(
                          vertical: 20,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Address',
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
                          decoration: InputDecoration(
                            hintText: 'City',
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
                              ),
                              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: scale.getScaledFont(14),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: scale.getScaledWidth(12),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'ZIP Code',
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
                        ],
                      ),
                      Container(
                        margin: scale.getMargin(
                          vertical: 20,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Phone number',
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
                    ],
                  ),
                ),
              ),
            ],
          ),
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
            'ADD NOW',
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
