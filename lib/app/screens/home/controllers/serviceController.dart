import 'package:flutter/cupertino.dart';

import '../../../data/api/api_client.dart';

class ServiceController with ChangeNotifier {

  DioClient dio;

  ServiceController({required this.dio});

  int currentTab = 0;

  void changeTap(int index) {
    currentTab = index;
    ///TODO: Have to add functionality
    notifyListeners();
  }
}