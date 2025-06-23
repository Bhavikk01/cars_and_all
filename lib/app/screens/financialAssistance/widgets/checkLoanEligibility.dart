import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/color/app_color.dart';
import '../../../../shared/theme/custom_text_style.dart';
import '../../../constants/assetConstant.dart';
import '../../../utils/scale_utility.dart';

class CheckLoanEligibility extends StatelessWidget {
  const CheckLoanEligibility({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();
    return Expanded(
      child: Column(
        children: [
          Container(
            margin: scale.getMargin(
              vertical: 10,
            ),
            child: Row(
              children: [
                Text(
                  'Sort by:',
                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                    fontSize: scale.getScaledFont(13),
                    color: AppColors.black2020.withOpacity(0.70),
                  ),
                ),
                Container(
                  width: scale.getScaledWidth(125),
                  margin: scale.getMargin(
                    left: 5,
                  ),
                  child: DropdownButtonFormField2<String>(
                    isDense: true,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: scale.getPadding(vertical: 9),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: AppColors.secondaryLight,
                          width: 1,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: AppColors.secondaryLight,
                          width: 1,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: AppColors.secondaryLight,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: AppColors.secondaryLight,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: AppColors.secondaryLight,
                          width: 1,
                        ),
                      ),
                    ),
                    style: CustomTextStyle.txtPoppins16Black500.copyWith(
                      color: Color(0xff9095A0),
                      fontSize: scale.getScaledFont(12),
                    ),
                    hint: Text(
                      'EMI',
                      style: CustomTextStyle.txtPoppins16Black500.copyWith(
                        color: Color(0xff9095A0),
                        fontSize: scale.getScaledFont(12),
                      ),
                    ),
                    items: ['3 months', '6 months', '12 months', '24 months'].map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: CustomTextStyle.txtPoppins16Black500.copyWith(
                          color: Color(0xff9095A0),
                          fontSize: scale.getScaledFont(12),
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
                            horizontal: 10,
                        ),
                        width: 10,
                    ),
                    iconStyleData: IconStyleData(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: scale.getScaledHeight(20),
                      ),
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
                  margin: scale.getMargin(
                    horizontal: 3,
                    vertical: 5
                  ),
                  padding: scale.getPadding(
                    vertical: 16,
                    horizontal: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: scale.getScaledHeight(12),
                                backgroundImage: AssetImage(
                                  AssetConstant.bankImage,
                                ),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(8),
                              ),
                              Text(
                                'HDFC Bank',
                                style: CustomTextStyle.txtPoppins12Black500.copyWith(
                                  fontSize: scale.getScaledFont(12),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: scale.getPadding(
                              horizontal: 8,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.secondaryLight,
                              borderRadius: BorderRadius.circular(44),
                            ),
                            child: Text(
                              'Best offer',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(12),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Loan Amount',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(9),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '₹4.5 Lakhs',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(12),
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryLight,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Interest Rate',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(9),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '9.5% p.a.',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(12),
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryLight,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(10),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tenure',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(9),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '36 months',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(12),
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryLight,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Emi',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(9),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '₹7,200/month',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(12),
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryLight,
                                  ),
                                )
                              ],
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
                            'Apply Now',
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
          )
        ],
      ),
    );
  }
}
