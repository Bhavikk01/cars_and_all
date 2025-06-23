import 'package:cars_and_all/app/constants/assetConstant.dart';
import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:cars_and_all/app/models/vehicle_model.dart';
import 'package:cars_and_all/app/screens/home/models/category_tile_model.dart';
import 'package:cars_and_all/app/screens/home/models/vehicle_brand_model.dart';
import 'package:flutter/material.dart';

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
}
