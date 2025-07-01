import 'package:cars_and_all/app/routes/app_router.dart';
import 'package:cars_and_all/app/routes/app_routes.dart';
import 'package:cars_and_all/app/utils/scale_utility.dart';
import 'package:cars_and_all/app/widgets/decoratedContainer.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/theme/custom_text_style.dart';
import '../../../constants/assetConstant.dart';

class CategoryCard extends StatelessWidget {
  final ScalingUtility scale;
  const CategoryCard({super.key, required this.scale});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.carDetailScreen);
      },
      child: Container(
        width: scale.getScaledWidth(145),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: scale.getScaledHeight(95),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      AssetConstant.car,
                    ),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: scale.getPadding(
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BMW 8-series',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      fontSize: scale.getScaledFont(12),
                    ),
                  ),
                  Text(
                    'Rs 24.89 Lakh',
                    style: CustomTextStyle.txtPoppins12Black500.copyWith(
                      fontSize: scale.getScaledFont(10),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: scale.getScaledHeight(8),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  DecoratedContainer(
                    padding: scale.getPadding(
                      horizontal: 8,
                      vertical: 6,
                    ),
                    fillColor: AppColors.secondaryLight,
                    borderRadius: 100,
                    margin: scale.getMargin(
                      top: 9,
                      bottom: 9,
                    ),
                    child: Text(
                      '2021',
                      style: CustomTextStyle.txtPoppins14Black700.copyWith(
                        fontSize: scale.getScaledFont(10),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
