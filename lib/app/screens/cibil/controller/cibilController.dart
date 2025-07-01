import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:cars_and_all/app/screens/cibil/model/chartData.dart';
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CibilController with ChangeNotifier {
  DioClient dio;

  CibilController({required this.dio});

  bool agreeTerms = false;
  bool enterVehicleDetailsAgreeTerms = false;
  final List<ChartData> chartData = [
    ChartData(xAxis: 'Nov',yAxis: 350),
    ChartData(xAxis: 'Dec',yAxis: 450),
    ChartData(xAxis: 'Jan',yAxis: 550),
    ChartData(xAxis: 'Feb',yAxis: 650),
    ChartData(xAxis: 'Mar',yAxis: 750),
  ];
  void updateTermsConditions(bool val) {
    agreeTerms = val;
    notifyListeners();
  }

  void updateEnterVehicleDetailsAgreeTerms(bool val) {
    enterVehicleDetailsAgreeTerms = val;
    notifyListeners();
  }



}