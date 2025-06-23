import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/color/app_color.dart';
import '../../../../shared/theme/custom_text_style.dart';
import '../../../constants/assetConstant.dart';
import '../../../utils/scale_utility.dart';

class TrackEmiStatus extends StatelessWidget {
  const TrackEmiStatus({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              margin: scale.getMargin(
                vertical: 10,
                horizontal: 2,
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
                  'Loan',
                  style: CustomTextStyle.txtPoppins16Black500.copyWith(
                    color: Color(0xff9095A0),
                    fontSize: scale.getScaledFont(12),
                  ),
                ),
                items: ['Home Loan-HDFC Bank', 'Home Loan-ICICI Bank', 'Home Loan-SBI Bank', 'Home Loan-AXIS Bank'].map((item) => DropdownMenuItem<String>(
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
                    return 'Please select the loan mode';
                  }
                  return null;
                },
                onChanged: (value) {},
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
            Container(
              margin: scale.getMargin(
                horizontal: 2,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintStyle: CustomTextStyle.txtPoppins12White300.copyWith(
                    color: Color(0xff9095A0),
                    fontSize: scale.getScaledFont(12),
                    fontWeight: FontWeight.w500,
                  ),
                  focusColor: AppColors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.secondaryLight),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.secondaryLight),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.secondaryLight),
                  ),
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      AssetConstant.searchBarIcon,
                      height: 2,
                    ),
                  ),
                  hintText: 'Search by Loan ID',
                ),
                style: CustomTextStyle.txtPoppins12White300.copyWith(
                  color: AppColors.black,
                  fontSize: scale.getScaledFont(12),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            DecoratedContainer(
              width: double.maxFinite,
              padding: scale.getPadding(
                horizontal: 10,
                vertical: 14,
              ),
              margin: scale.getMargin(
                vertical: 13,
                horizontal: 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Next EMI Due',
                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                          color: AppColors.primaryLight,
                          fontSize: scale.getScaledFont(12),
                        ),
                      ),
                      Container(
                        padding: scale.getPadding(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.backgroundColor,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: AppColors.secondaryLight,
                            width: 1
                          ),
                        ),
                        child: Text(
                          'Pending',
                          style: CustomTextStyle.txtPoppins10W400.copyWith(
                            color: AppColors.secondaryLight,
                            fontWeight: FontWeight.w600,
                            fontSize: scale.getScaledFont(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(8),
                  ),
                  Text(
                    '5th June 2025',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      color: Color(0xff202020).withOpacity(0.70),
                      fontSize: scale.getScaledFont(12),
                    ),
                  ),
                  Text(
                    '₹7,200',
                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                      color: AppColors.primaryLight,
                      fontSize: scale.getScaledFont(14),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.secondaryLight,
                  width: 1,
                ),
              ),
              padding: scale.getPadding(
                horizontal: 10,
                vertical: 11,
              ),
              margin: scale.getMargin(
                horizontal: 2,
                vertical: 3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Loan Summary',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      fontSize: scale.getScaledFont(12),
                    ),
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
                              'Loan Provider',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(9),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'HDFC Bank',
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
                              'Remaining Balance',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(9),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '₹5,32,000',
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
                              'Remaining month',
                              style: CustomTextStyle.txtPoppins10W400.copyWith(
                                fontSize: scale.getScaledFont(9),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '42 months',
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
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.secondaryLight,
                  width: 1,
                ),
              ),
              padding: scale.getPadding(
                horizontal: 10,
                vertical: 11,
              ),
              margin: scale.getMargin(
                horizontal: 2,
                vertical: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment History',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      fontSize: scale.getScaledFont(12),
                    ),
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(12),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '5th June 2025',
                                style: CustomTextStyle.txtPoppins10W400.copyWith(
                                  fontSize: scale.getScaledFont(12),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'EMI Payment',
                                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                                  fontSize: scale.getScaledFont(14),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primaryLight,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '₹7,000',
                                style: CustomTextStyle.txtPoppins10W400.copyWith(
                                  fontSize: scale.getScaledFont(12),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primaryLight,
                                ),
                              ),
                              Container(
                                padding: scale.getPadding(
                                  vertical: 2,
                                  horizontal: 15,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.greenCheckColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Text(
                                  'Paid',
                                  style: CustomTextStyle.txtPoppins10W400.copyWith(
                                    fontSize: scale.getScaledFont(9),
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        margin: scale.getMargin(
                          vertical: 10,
                        ),
                        child: Divider(
                          height: 0,
                          thickness: 0.5,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
