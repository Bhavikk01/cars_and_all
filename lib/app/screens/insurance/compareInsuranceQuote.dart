import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/theme/custom_text_style.dart';
import '../../constants/assetConstant.dart';
import '../../utils/scale_utility.dart';

class CompareInsuranceQuote extends StatelessWidget {
  const CompareInsuranceQuote({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: scale.getMargin(
            horizontal: 24,
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
                  vertical: 10,
                ),
                child: Text(
                  'Compare Insurance Quotes',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontSize: scale.getScaledFont(22),
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  bottom: 12,
                ),
                child: Text(
                  'Choose the best plan from top insurance providers',
                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                    fontSize: scale.getScaledFont(13),
                    fontWeight: FontWeight.w400,
                    color: Color(0xff828282),
                  ),
                ),
              ),
              Container(
                margin: scale.getMargin(
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Sort by:',
                      style: CustomTextStyle.txtPoppins10W400.copyWith(
                        fontSize: scale.getScaledFont(10),
                        color: AppColors.black,
                      ),
                    ),
                    Container(
                      width: scale.getScaledWidth(125),
                      margin: scale.getMargin(
                        left: 5,
                      ),
                      child: DropdownButtonFormField2<String>(
                        isDense: true,
                        value: 'Price-High to Low',
                        decoration: InputDecoration(
                          filled: true,
                          isDense: true,
                          fillColor: AppColors.white,
                          focusColor: AppColors.white,
                          contentPadding: scale.getPadding(vertical: 3),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            ),
                          ),
                        ),
                        hint: Text(
                          'Date Listed: Newest',
                          style: CustomTextStyle.txtPoppins16Black500.copyWith(
                            color: Color(0xff555555),
                            fontWeight: FontWeight.w400,
                            fontSize: scale.getScaledFont(10),
                          ),
                        ),
                        items: ['Price-High to Low', 'Price-Low to High', 'IDV (High to Low)', 'Provider Name (A-Z)'].map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: CustomTextStyle.txtPoppins16Black500.copyWith(
                              color: Color(0xff555555),
                              fontWeight: FontWeight.w400,
                              fontSize: scale.getScaledFont(10),
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

                        },
                        buttonStyleData: ButtonStyleData(
                          padding: scale.getPadding(
                            horizontal: 8
                          ),
                          width: 10
                        ),
                        iconStyleData: IconStyleData(
                          icon: SvgPicture.asset(
                            AssetConstant.sortIcon,
                          ),
                          iconSize: scale.getScaledFont(10),
                        ),
                        dropdownStyleData: DropdownStyleData(
                          offset: Offset(0, -5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        menuItemStyleData: MenuItemStyleData(
                          padding: scale.getPadding(horizontal: 8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return DecoratedContainer(
                      width: double.maxFinite,
                      padding: scale.getPadding(
                        horizontal: 10,
                        vertical: 16,
                      ),
                      margin: scale.getMargin(horizontal: 2, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: scale.getScaledHeight(14),
                                    backgroundImage: AssetImage(
                                      AssetConstant.bankImage,
                                    ),
                                  ),
                                  SizedBox(
                                    width: scale.getScaledWidth(10),
                                  ),
                                  Text(
                                    'HDFC Ergo',
                                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                      fontSize: scale.getScaledFont(12),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                '₹ 7000',
                                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontSize: scale.getScaledFont(14),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primaryLight,
                                ),
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'Premium',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(9),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'IDV: ',
                                style: CustomTextStyle.txtPoppins10W400.copyWith(
                                  fontSize: scale.getScaledFont(8),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: '₹3.2 Lakhs',
                                    style: CustomTextStyle.txtPoppins10W400.copyWith(
                                      fontSize: scale.getScaledFont(8),
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primaryLight,
                                    ),
                                  )
                                ]
                            ),
                          ),
                          SizedBox(
                            height: scale.getScaledHeight(5),
                          ),
                          Row(
                            children: [
                              Text(
                                '🧩 Add-ons: ',
                                style: CustomTextStyle.txtPoppins10W400.copyWith(
                                  fontSize: scale.getScaledFont(8),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black,
                                ),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(8),
                              ),
                              Text(
                                'Zero Dep, Roadside Assistance (RSA)',
                                style: CustomTextStyle.txtPoppins10W400.copyWith(
                                  fontSize: scale.getScaledFont(8),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: scale.getScaledHeight(40),
                            margin: scale.getMargin(
                              top: 16,
                            ),
                            width: double.maxFinite,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.secondaryLight,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  )
                              ),
                              onPressed: (){},
                              child: Text(
                                'Buy Now',
                                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontSize: scale.getScaledFont(14),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: scale.getMargin(
          bottom: 20,
          top: 10,
          left: 20,
          right: 20,
        ),
        height: scale.getScaledHeight(55),
        child: ElevatedButton(
          onPressed: () {
            // ref.read(insuranceFormController)!.updateStepperIndex();
          },
          child: Text(
            'Continue',
            style: CustomTextStyle.txtPoppins16Black500.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.white,
              fontSize: scale.getScaledFont(16),
            ),
          ),
        ),
      ),
    );
  }
}
