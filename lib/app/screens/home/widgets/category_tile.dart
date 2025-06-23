import 'package:cars_and_all/app/screens/home/models/category_tile_model.dart';
import 'package:cars_and_all/app/utils/scale_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/color/app_color.dart';
import '../../../../shared/theme/custom_text_style.dart';

class CategoryTile extends StatelessWidget {
  final ScalingUtility scale;
  final CategoryTileModel category;
  const CategoryTile({required this.category, required this.scale, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: scale.getPadding(
        left: 6,
        right: 12,
        top: 3,
        bottom: 3,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
          color: AppColors.secondaryLight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: scale.getScaledFont(12),
            child: SvgPicture.asset(
              category.categoryLogo,
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            category.categoryName,
            style: CustomTextStyle.txtPoppins12Black500,
          ),
        ],
      ),
    );
  }
}
