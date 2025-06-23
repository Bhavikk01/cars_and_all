
import 'package:flutter/material.dart';
import 'package:super_tooltip/super_tooltip.dart';

class BottomNavController with ChangeNotifier {
  int index = 0;

  BottomNavController();
  SuperTooltipController superTooltipController = SuperTooltipController();
  void updateIndex(int index){
    this.index = index;
    notifyListeners();
  }
}
