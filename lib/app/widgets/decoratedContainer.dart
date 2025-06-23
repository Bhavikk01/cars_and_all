import 'package:flutter/material.dart';

import '../../shared/color/app_color.dart';
import '../utils/scale_utility.dart';

class DecoratedContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final Color? fillColor;
  final Color? borderColor;
  final int? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Widget child;
  const DecoratedContainer({super.key, this.margin, this.padding, this.height, this.width, required this.child, this.fillColor, this.borderColor, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();

    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding ?? scale.getPadding(
        vertical: 20,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(scale.getScaledFont(borderRadius?? 10)),
        color: fillColor ?? AppColors.white,
        border: Border.all(
          color: borderColor?? AppColors.secondaryLight,
        ),
      ),
      child: child,
    );
  }
}
