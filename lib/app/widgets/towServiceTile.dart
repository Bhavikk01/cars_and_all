import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:flutter/material.dart';

import '../../shared/color/app_color.dart';
import '../../shared/theme/custom_text_style.dart';
import '../utils/scale_utility.dart';

class TowServiceTile extends StatelessWidget {
  const TowServiceTile({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return DecoratedContainer(
      padding: scale.getPadding(
        top: 10,
        bottom: 12,
        left: 10,
        right: 10,
      ),
      margin: scale.getMargin(
        vertical: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Quick Tow Services',
            style: CustomTextStyle.txtPoppins14Black700.copyWith(
              fontSize: scale.getScaledFont(14),
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '123 Main Street, Downtowns',
                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                  fontSize: scale.getScaledFont(10),
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6C6C6C),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: scale.getScaledFont(12),
                    color: AppColors.secondaryLight,
                  ),
                  Text(
                    ' 4.8(234 reviews)',
                    style: CustomTextStyle.txtPoppins14Black700.copyWith(
                      fontSize: scale.getScaledFont(10),
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6C6C6C),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2.5 km away',
                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                  fontSize: scale.getScaledFont(10),
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6C6C6C),
                ),
              ),
              Text(
                '₹300',
                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                  fontSize: scale.getScaledFont(14),
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryLight,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              '20mins',
              style: CustomTextStyle.txtPoppins14Black700.copyWith(
                fontSize: scale.getScaledFont(10),
                fontWeight: FontWeight.w500,
                color: AppColors.greenCheckColor,
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: scale.getScaledHeight(40),
            margin: scale.getMargin(
              top: 7,
              left: 2,
              right: 2,
              bottom: 2,
            ),
            padding: scale.getPadding(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.secondaryLight,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: scale.getPadding(
                  vertical: 20,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.wifi_calling_3_outlined,
                    color: AppColors.primaryLight,
                  ),
                  SizedBox(
                    width: scale.getScaledWidth(10),
                  ),
                  Text(
                    'Call Support',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      color: AppColors.primaryLight,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
