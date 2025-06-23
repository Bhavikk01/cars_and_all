import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:cars_and_all/app/screens/insurance/enum/insuranceType.dart';
import 'package:flutter/cupertino.dart';

class InsuranceFormController with ChangeNotifier {
  DioClient dio;

  InsuranceFormController({required this.dio});

  int insuranceStepperIndex = 1;

  InsuranceType insuranceType = InsuranceType.COMPREHENSIVE;

  String fuelTypeSelection = 'Petrol';

  List<String> allFuelType = [
    'Petrol',
    'Diesel',
    'CNG'
  ];

  String registrationTypeSelection = 'Type 1';

  List<String> allRegistrationType = [
    'Type 1',
    'Type 2',
    'Type 3',
  ];

  void updateStepperIndex({int? val}) {
    if (val == null) {
      if (insuranceStepperIndex < 3) {
        insuranceStepperIndex++;
      } else if (insuranceStepperIndex == 3) {
        ///TODO Submit functionality
      }
      notifyListeners();
    } else {
      insuranceStepperIndex = val;
      notifyListeners();
    }
  }

  void changeFuelTypeSelection(String value) {
    fuelTypeSelection = value;
    notifyListeners();
  }

  void changeRegistrationTypeSelection(String s) {
    registrationTypeSelection = s;
    notifyListeners();
  }

  void updateInsuranceTypeSelection(insuranceType) {
    this.insuranceType = insuranceType;
    notifyListeners();
  }
}