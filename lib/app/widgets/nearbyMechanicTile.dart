import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/assetConstant.dart';
import '../utils/scale_utility.dart';

class NearbyMechanicTile extends StatelessWidget {
  const NearbyMechanicTile({super.key});

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
            'AutoCare Mechanics',
            style: CustomTextStyle.txtPoppins14Black700.copyWith(
              fontSize: scale.getScaledFont(14),
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '123 Main Street, Downtowns',
            style: CustomTextStyle.txtPoppins14Black700.copyWith(
              fontSize: scale.getScaledFont(10),
              fontWeight: FontWeight.w500,
              color: Color(0xff6C6C6C),
            ),
          ),
          Text(
            '2.5 km away',
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
          Text(
            'Starting from ₹300',
            style: CustomTextStyle.txtPoppins14Black700.copyWith(
              fontSize: scale.getScaledFont(10),
              fontWeight: FontWeight.w600,
              color: AppColors.primaryLight,
            ),
          ),
          Text(
            'Open until 8:00 PM',
            style: CustomTextStyle.txtPoppins14Black700.copyWith(
              fontSize: scale.getScaledFont(10),
              fontWeight: FontWeight.w500,
              color: AppColors.greenCheckColor,
            ),
          ),
          SizedBox(
            height: scale.getScaledHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: scale.getScaledHeight(40),
                width: scale.getScaledWidth(120),
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
              SizedBox(
                width: scale.getScaledWidth(23),
              ),
              Container(
                height: scale.getScaledHeight(40),
                width: scale.getScaledWidth(120),
                padding: scale.getPadding(
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primaryLight,
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
                    children: [
                      SvgPicture.asset(
                        AssetConstant.chatIcon,
                        color: AppColors.white,
                      ),
                      SizedBox(
                        width: scale.getScaledWidth(10),
                      ),
                      Text(
                        'Chat Support',
                        style: CustomTextStyle.txtPoppins12Black500.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
