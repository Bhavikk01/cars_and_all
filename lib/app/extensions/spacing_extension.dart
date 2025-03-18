import 'package:flutter/material.dart';

extension SpaceExtension on num{

  SizedBox get space => SizedBox.square(dimension: toDouble());
  SizedBox get spaceHorizontal => SizedBox(width: toDouble(),);
  SizedBox get spaceVertical => SizedBox(width: toDouble(),);

}

extension PaddingExtension on num{

  EdgeInsets get padding => EdgeInsets.all(toDouble());
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: toDouble());

}