enum NestedNavigationEmi{
  emiCalculatorScreen,
  loanSummaryScreen
}


extension NestedNavIDEmi on NestedNavigationEmi {
  int? get navID {
    switch(this){
      case NestedNavigationEmi.emiCalculatorScreen:
        return 1;
      case NestedNavigationEmi.loanSummaryScreen:
        return 2;
    }
  }
}