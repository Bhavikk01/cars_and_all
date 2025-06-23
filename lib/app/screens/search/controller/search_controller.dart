import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:cars_and_all/app/models/vehicle_model.dart';
import 'package:flutter/material.dart';

class SearchController with ChangeNotifier {
  final DioClient dio;

  SearchController({required this.dio});

  TextEditingController searchField = TextEditingController();
  List<VehicleModel> searchedVehicles = [];
  List<String> recentSearch = [
    'McLaren',
    'Mustang',
    'Bugatti',
    'Lamborgini',
    'Porsche',
    'BMW',
  ];

  bool isSearched = false;

  Future<void> search() async {
    isSearched = true;
  }

}