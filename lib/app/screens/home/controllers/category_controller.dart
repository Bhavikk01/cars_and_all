import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants/assetConstant.dart';
import '../models/category_tile_model.dart';

class CategoryController with ChangeNotifier {
  DioClient dio;
  CategoryController({required this.dio});


  List<CategoryTileModel> allCategories = [
    CategoryTileModel('Cars', AssetConstant.carTile),
    CategoryTileModel('Bikes', AssetConstant.bikeTile),
    CategoryTileModel('Electric Vehicle', AssetConstant.carTile),
    CategoryTileModel('Luxe', AssetConstant.carTile),
    CategoryTileModel('Commercial Vehicle', AssetConstant.carTile),
    CategoryTileModel('Heavy Machinery', AssetConstant.carTile),
    CategoryTileModel('Coming Soon', AssetConstant.carTile),
  ];

  String selectedCategory = '';

  updateSelectedCategory(String val) {
    selectedCategory = val;
    notifyListeners();
  }

}