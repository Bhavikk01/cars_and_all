import 'package:cars_and_all/app/utils/scale_utility.dart';
import 'package:flutter/material.dart';

import '../../../../shared/color/app_color.dart';
import '../../../../shared/theme/custom_text_style.dart';
import '../../../constants/assetConstant.dart';

class ServicesTile extends StatelessWidget {
  final ScalingUtility scale;
  final Function() onTap;
  final String service;
  const ServicesTile({super.key, required this.scale, required this.onTap, required this.service});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        padding: scale.getPadding(
          horizontal: 20,
          vertical: 25,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.secondaryLight,
              width: 2,
            )
        ),
        child: Column(
          children: [
            Image.asset(
              AssetConstant.services,
              fit: BoxFit.cover,
              height: scale.getScaledHeight(40),
              width: scale.getScaledWidth(40),
            ),
            SizedBox(
              height: scale.getScaledHeight(14),
            ),
            SizedBox(
              child: Text(
                service,
                textAlign: TextAlign.center,
                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryLight,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
