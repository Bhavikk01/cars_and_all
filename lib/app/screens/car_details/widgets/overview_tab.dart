import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../../utils/scale_utility.dart';

class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {

    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Container(
      margin: scale.getMargin(
        horizontal: 20,
      ),
      padding: scale.getPadding(
        bottom: 10,
      ),
      child: Column(
        children: [
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Registration Year',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  'April 2019',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Insurance',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  'Comprehensive',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RTO',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  'Delhi',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ownership',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  '1st Owner',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Seats',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  '04',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mileage',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  '17.20 kmpl',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Service Cost',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  '-',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fuel type',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  'Diesel',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fuel tank',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  '58 Litres',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kms Driven',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  '9,577 Kms',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Steering type',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  'Electric',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Turning Radius',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  '5.75meters',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transmission',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  'Automatic',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'No Of Doors',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  '05',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Year of Manufacture',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  '2018',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Restoration Level',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  'Partial',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
          Container(
            margin: scale.getMargin(
              bottom: 5,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popularity/Collectability',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  'High Demand',
                  style: CustomTextStyle.txtPoppins12Black500.copyWith(
                    color: AppColors.black2020,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.black2020.withOpacity(0.30),
            thickness: 0.75,
          ),
        ],
      ),
    );
  }
}
