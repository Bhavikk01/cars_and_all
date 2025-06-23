import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:flutter/cupertino.dart';

class PaymentController with ChangeNotifier {
  DioClient dio;
  PaymentController({required this.dio});

  List<String> paymentInitialComponent = [
    'Car Price',
    'Registration',
    'Insurance',
    'Accessories',
  ];

  List<String> paymentInitialComponentAmount = [
    '₹45,00,000',
    '₹1,25,000',
    '₹85,000',
    '₹45,000',
  ];
  List<String> allPaymentMethods = [
    'Select payment method',
    'Payment Method 1',
    'Payment Method 2',
    'Payment Method 3',
  ];
  String paymentMethod = 'Select payment method';


  PageController paymentMethodPageController = PageController(viewportFraction: 0.8, initialPage: 0);

  int paymentMethodIndex = 0;

  void changePaymentMethod(val) {
    paymentMethod = val;
    notifyListeners();
  }

  void changePaymentMethodPageIndex(index) {
    paymentMethodIndex = index;
    notifyListeners();
  }

}