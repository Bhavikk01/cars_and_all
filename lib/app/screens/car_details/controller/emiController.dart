import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:flutter/widgets.dart';

class EmiController with ChangeNotifier {
  DioClient dio;

  EmiController({required this.dio});

  double loanAmount = 0;
  int chosenDuration = 0;
  List<int> emiDuration = [
    3,
    6,
    12,
    18,
    24,
    36,
    48,
    72,
  ];

  List<String> loanComponent = [
    'Car Price',
    'Down Payment',
    'Loan Amount',
    'Interest Rate',
    'Tenure',
    'Monthly EMI',
    'Total Interest Payable',
    'Total Payment (EMI × 24)',
    'Total Cost of Loan'
  ];
  List<String> amountSummaryComponent = [
    '₹ 8,00,000',
    '₹ 81,000',
    '₹ 7,19,000',
    '14.5% per annum',
    '24 months',
    '₹ 19,832',
    '₹ 1,54,968',
    '₹ 4,75,968',
    '₹ 8,73,968'
  ];

  List<String> emiInterestAmount = [
    '₹26,070',
    '₹52,125',
    '₹77,635',
    '₹1,03,510',
    '₹1,29,350',
    '₹1,54,968',
    '₹2,33,100',
    '₹3,13,290'
  ];

  List<String> emiSummary = [
    '₹2,48,357',
    '₹1,28,204',
    '₹88,737',
    '₹68,460',
    '₹46,663',
    '₹19,832',
    '₹2,33,100',
    '₹25,679'
  ];

  void changeLoanAmount(val) {
    loanAmount = val;
    notifyListeners();
  }

  void changeDuration(int index) {
    chosenDuration = emiDuration[index];
    notifyListeners();
  }
}