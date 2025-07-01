import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:cars_and_all/app/models/vehicle_model.dart';
import 'package:cars_and_all/app/screens/home/models/category_tile_model.dart';
import 'package:cars_and_all/app/screens/home/models/vehicle_brand_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class HomeController with ChangeNotifier {

  DioClient dio;

  HomeController({required this.dio});

  List<CategoryTileModel> topCategories = [
    CategoryTileModel('Cars', AssetConstant.carTile),
    CategoryTileModel('Bikes', AssetConstant.bikeTile),
    CategoryTileModel('Electric Vehicle', AssetConstant.carTile),
    CategoryTileModel('Luxe', AssetConstant.carTile),
    CategoryTileModel('Commercial Vehicle', AssetConstant.carTile),
    CategoryTileModel('Heavy Machinery', AssetConstant.carTile),
    CategoryTileModel('Coming Soon', AssetConstant.carTile),
  ];

  List<String> allServices = [
    'Financial Assistance',
    'CIBIL Score Check',
    'EMI Calculator',
    'Vehicle Insurance',
    'Compare Insurance Quotes',
    'RTO API',
    'Insurance',
    'Document Upload'
  ];

  List<String> popularCarBrands = [];
  List<String> allBrands = [];

  List<VehicleBrandModel> vehicleBrandModel = [
    VehicleBrandModel(
      'SUV',
      [
        VehicleModel(
          'Mahindra Scorpio',
          "SUV",
          "13000",
          true,
          AssetConstant.car,
        ),
        VehicleModel(
          'Mahindra Scorpio',
          "SUV",
          "13000",
          true,
          AssetConstant.car,
        ),
      ],
    ),
    VehicleBrandModel(
      'HatchBack',
      [
        VehicleModel(
          'Mahindra Scorpio',
          "HatchBack",
          "13000",
          true,
          AssetConstant.car,
        ),
        VehicleModel(
          'Mahindra Scorpio',
          "HatchBack",
          "13000",
          true,
          AssetConstant.car,
        ),
      ],
    ),
    VehicleBrandModel(
      'SEDAN',
      [
        VehicleModel(
          'Mahindra Scorpio',
          "SEDAN",
          "13000",
          true,
          AssetConstant.car,
        ),
        VehicleModel(
          'Mahindra Scorpio',
          "SEDAN",
          "13000",
          true,
          AssetConstant.car,
        ),
      ],
    ),
    VehicleBrandModel(
      'MUV',
      [
        VehicleModel(
          'Mahindra Scorpio',
          "MUV",
          "13000",
          true,
          AssetConstant.car,
        ),
        VehicleModel(
          'Mahindra Scorpio',
          "MUV",
          "13000",
          true,
          AssetConstant.car,
        ),
      ],
    ),
    VehicleBrandModel(
      'Luxury',
      [
        VehicleModel(
          'Mahindra Scorpio',
          "Luxury",
          "13000",
          true,
          AssetConstant.car,
        ),
        VehicleModel(
          'Mahindra Scorpio',
          "Luxury",
          "13000",
          true,
          AssetConstant.car,
        ),
      ],
    ),
  ];

  int chooseYourCarTab = 0;

  void changeTap(int index) {
    chooseYourCarTab = index;
    ///TODO: Have to add functionality
    notifyListeners();
  }

  void navigateToService(int index) {
    switch(index){
      case 0:
        Get.toNamed(AppRoutes.financialAssistLandingScreen);
        break;
      case 1:
        Get.toNamed(AppRoutes.cibilLandingScreen);
        break;
      case 2:
        // Get.toNamed(AppRoutes.emiCalculatorScreen);
        break;
      case 3:
        Get.toNamed(AppRoutes.insuranceFormScreen);
        break;
      case 4:
        Get.toNamed(AppRoutes.compareInsuranceQuote);
        break;
      case 5:
        // Get.toNamed(AppRoutes.rto);
        break;
      case 6:
        Get.toNamed(AppRoutes.insuranceFormScreen);
        break;
      case 7:
        Get.toNamed(AppRoutes.uploadDocumentScreen);
        break;
      default: break;
    }
  }
}
