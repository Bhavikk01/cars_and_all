import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:flutter/cupertino.dart';

class FinancialAssistController with ChangeNotifier {

  DioClient dio;

  FinancialAssistController({required this.dio});

  int stepperIndex = 1;

  String vehicleType = 'Vehicle 1';

  List<String> allVehicleType = [
    'Vehicle 1',
    'Vehicle 2',
    'Vehicle 3',

  ];

  bool agreeTerms = false;

  List<String> financialAssistComponent = [
    'Loan Type',
    'Loan Amount',
    'Submitted on',
    'Application ID',
  ];

  List<String> financialAssistComponentValues = [
    'Vehicle Loan',
    '₹ 7,19,000',
    '30-MAY-2025',
    'VLOAN2025-8937',
  ];
  void changeStepperIndex({int? val}) {
    if (val == null) {
      if (stepperIndex < 3) {
        stepperIndex++;
      } else if (stepperIndex == 3) {
        ///TODO Submit functionality
      }
      notifyListeners();
    } else {
      stepperIndex = val;
      notifyListeners();
    }
  }

  void changeVehicleType(String s) {
    vehicleType = s;
    notifyListeners();
  }

  void updateTermsConditions(val) {
    agreeTerms = val;
    notifyListeners();
  }

}