import 'package:flutter/material.dart';

extension BuildContextThemeExtension on BuildContext {

  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;


}