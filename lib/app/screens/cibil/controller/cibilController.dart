import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:flutter/cupertino.dart';

class CibilController with ChangeNotifier {
  DioClient dio;

  CibilController({required this.dio});

  bool agreeTerms = false;
  bool enterVehicleDetailsAgreeTerms = false;

  void updateTermsConditions(bool val) {
    agreeTerms = val;
    notifyListeners();
  }

  void updateEnterVehicleDetailsAgreeTerms(bool val) {
    enterVehicleDetailsAgreeTerms = val;
    notifyListeners();
  }



}