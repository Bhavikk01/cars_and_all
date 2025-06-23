enum NestedNavigation {
  homeScreen,
  categoryScreen,
  chatScreen,
  reelsScreen,
}

extension NestedNavID on NestedNavigation {
  int? get navID {
    switch(this){
      case NestedNavigation.homeScreen:
        return 1;
      case NestedNavigation.categoryScreen:
        return 2;
      case NestedNavigation.chatScreen:
        return 3;
      case NestedNavigation.reelsScreen:
        return 4;
      }
  }
}