import 'package:flutter/material.dart';

extension BuildContextMediaQueryExtension on BuildContext {

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => mediaQuery.size;
  Orientation get screenOrientation => mediaQuery.orientation;

}