import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/providers/providers.dart';
import 'package:cars_and_all/app/utils/scale_utility.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterTile extends StatelessWidget {
  final String text;
  final Function() onTap;
  final bool isActive;
  final ScalingUtility scale;
  const FilterTile({super.key, required this.text, required this.onTap, required this.isActive, required this.scale});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        color: isActive ? AppColors.white : AppColors.backgroundColor,
        padding: scale.getPadding(
          horizontal: 10,
          vertical: 10,
        ),
        child: Row(
          children: [
            if(isActive)
              Padding(
                padding: scale.getPadding(right: 8),
                child: SvgPicture.asset(
                  AssetConstant.rightIcon,
                ),
              ),
            SizedBox(
              width: scale.getScaledWidth(85),
              child: Text(
                text,
                style: CustomTextStyle.txtPoppins14Black700.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
