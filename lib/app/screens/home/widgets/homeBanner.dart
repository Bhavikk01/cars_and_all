import 'package:flutter/material.dart';

import '../../../../shared/color/app_color.dart';
import '../../../../shared/theme/custom_text_style.dart';
import '../../../constants/assetConstant.dart';
import '../../../utils/scale_utility.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Container(
      width: double.maxFinite,
      margin: scale.getMargin(
          vertical: 15
      ),
      padding: scale.getPadding(
        top: 38,
        bottom: 50,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AssetConstant.homeBanner,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: 'BUY YOUR ',
              style: CustomTextStyle.txtPoppins20W700.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryLight,
              ),
              children: [
                TextSpan(
                  text: 'DREAM CAR ',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
                TextSpan(
                  text: 'TODAY!',
                  style: CustomTextStyle.txtPoppins20W700.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryLight,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: scale.getPadding(
              vertical: 12,
              horizontal: 20,
            ),
            child: Text(
              'Find your dream car at the best price. Buy, sell, and explore from a wide range of vehicles today!',
              textAlign: TextAlign.center,
              style: CustomTextStyle.txtPoppins12White300.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: scale.getScaledHeight(30),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: scale.getPadding(
                    horizontal: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  )
              ),
              child: Text(
                'EXPLORE NOW',
                style: CustomTextStyle.txtPoppins12Black500.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
