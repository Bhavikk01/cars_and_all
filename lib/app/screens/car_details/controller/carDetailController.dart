import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarDetailController extends ChangeNotifier {
  DioClient dio;

  CarDetailController({required this.dio});

  int currentTab = 0;
  String offerSelection = 'Select your offer';

  List<String> offerList = [
    'Select your offer',
    'Offer 1',
    'Offer 2',
    'Offer 3',
    'Offer 4',
  ];

  void changeTabIndex(int index){
    currentTab = index;
    notifyListeners();
  }

  void changeOfferChoice(String? value) {
    offerSelection = value!;
    notifyListeners();
  }

}