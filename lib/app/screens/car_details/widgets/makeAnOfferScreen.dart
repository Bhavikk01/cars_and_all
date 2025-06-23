import 'package:cars_and_all/app/providers/providers.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/color/app_color.dart';
import '../../../../shared/theme/custom_text_style.dart';
import '../../../utils/scale_utility.dart';

class MakeAnOfferScreen extends StatelessWidget {
  const MakeAnOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.maxFinite,
          padding: scale.getPadding(
            left: 24,
            right: 22,
            top: 26,
            bottom: 13,
          ),
          decoration: BoxDecoration(
            color: AppColors.primaryLight,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Make Offer',
                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
              Text(
                '2025 BMW 8-series',
                style: CustomTextStyle.txtPoppins12Black500.copyWith(
                  fontSize: scale.getScaledFont(10),
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: scale.getMargin(
              horizontal: 22,
              vertical: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Highest Offer',
                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: scale.getMargin(
                    vertical: 5,
                  ),
                  padding: scale.getPadding(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.secondaryLight,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rs. -',
                        style: CustomTextStyle.txtPoppins14Black700.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: scale.getScaledFont(12),
                        ),
                      ),
                      Text(
                        '',
                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                          color: AppColors.primaryLight,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),

                Text(
                  'Total Offer',
                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: scale.getMargin(
                    vertical: 5,
                  ),
                  padding: scale.getPadding(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.secondaryLight,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    'Rs. -',
                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: scale.getScaledFont(12),
                    ),
                  ),
                ),

                Text(
                  'Car Price',
                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: scale.getMargin(
                    vertical: 5,
                  ),
                  padding: scale.getPadding(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.secondaryLight,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    'Rs. 10.5 Lakh',
                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: scale.getScaledFont(12),
                    ),
                  ),
                ),
                SizedBox(
                  height: scale.getScaledHeight(5),
                ),
                Text(
                  'How much do you want to offer?',
                  style: CustomTextStyle.txtPoppins14Black700.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: scale.getScaledHeight(5),
                ),
                Consumer(
                  builder: (context, ref, child) {
                    return DropdownButtonFormField2<String>(
                      isDense: true,
                      value: ref.watch(carDetailProvider)!.offerSelection,
                      decoration: InputDecoration(
                        contentPadding: scale.getPadding(vertical: 10),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            )
                        ),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            )
                        ),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                              color: AppColors.secondaryLight,
                              width: 1,
                            )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: AppColors.secondaryLight,
                            width: 2,
                          )
                        ),
                      ),
                      hint: Text(
                        'Select Your offer',
                        style: CustomTextStyle.txtPoppins10W400.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      items: ref.read(carDetailProvider)?.offerList.map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: CustomTextStyle.txtPoppins10W400.copyWith(
                            color: AppColors.black,
                            fontSize: scale.getScaledFont(10),
                          ),
                        ),
                      )).toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select an offer.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        ref.read(carDetailProvider)!.changeOfferChoice(value);
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      menuItemStyleData: MenuItemStyleData(
                        padding: scale.getPadding(horizontal: 16),
                      ),
                    );
                  }
                ),
                SizedBox(
                  height: scale.getScaledHeight(8),
                ),
                Text(
                  '*Please make an offer to the dealer you find suitable',
                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                    fontSize: scale.getScaledFont(9),
                    color: AppColors.black,
                  ),
                ),
                SizedBox(
                  height: scale.getScaledHeight(5),
                ),
                Spacer(),
                SizedBox(
                  width: double.maxFinite,
                  height: scale.getScaledHeight(40),
                  child: ElevatedButton(
                    onPressed: (){

                    },
                    child: Text(
                      'Interest in Loan',
                      style: CustomTextStyle.txtPoppins12Black500.copyWith(
                        fontSize: scale.getScaledFont(14),
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
    );
  }
}
