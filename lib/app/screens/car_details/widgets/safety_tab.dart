import 'package:flutter/material.dart';

import '../../../../shared/color/app_color.dart';
import '../../../../shared/theme/custom_text_style.dart';
import '../../../utils/scale_utility.dart';

class SafetyTab extends StatelessWidget {
  const SafetyTab({super.key});

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
                  'Parking Sensor',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  'Yes',
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
                  'Airbags',
                  style: CustomTextStyle.txtPoppins12Black500,
                ),
                Text(
                  'Yes',
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
