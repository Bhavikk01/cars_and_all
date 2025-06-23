import 'package:cars_and_all/app/utils/scale_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/color/app_color.dart';

class IconTile extends StatelessWidget {
  final ScalingUtility scale;
  final Icon icon;
  final bool isSelected;
  final String tileText;
  final TextStyle selectedTextStyle;
  final TextStyle unSelectedTextStyle;
  final Color selectedColor;
  final Color unSelectedColor;
  const IconTile({super.key, required this.scale, required this.icon, required this.tileText, required this.isSelected, required this.selectedTextStyle, required this.unSelectedTextStyle, required this.selectedColor, required this.unSelectedColor});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: scale.getPadding(
        left: 5,
        right: 10,
        top: 2,
        bottom: 2,
      ),
      decoration: BoxDecoration(
        color: isSelected ? selectedColor : unSelectedColor,
        borderRadius: BorderRadius.circular(20),
        border: isSelected ? null : Border.all(
          width: 1,
          color: selectedColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: scale.getScaledFont(10),
            backgroundColor: isSelected ? selectedColor : unSelectedColor,
            child: icon,
          ),
          Text(
            tileText,
            style: isSelected ? selectedTextStyle : unSelectedTextStyle,
          ),
        ],
      ),
    );
  }
}
