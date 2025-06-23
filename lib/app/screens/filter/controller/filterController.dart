
import 'package:cars_and_all/app/data/api/api_client.dart';
import 'package:cars_and_all/app/screens/filter/enum/driveType.dart';
import 'package:cars_and_all/app/screens/filter/enum/transmissionType.dart';
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilterController with ChangeNotifier{
  final DioClient dio;
  FilterController({required this.dio});

  TextEditingController searchFieldController = TextEditingController();

  ///Values which will change according to user selection
  int currentTab = 0;
  bool isSelectAll = false;
  List<String> selectedBrandName = [];
  List<String> selectedModelName = [];
  List<String> selectedVariants = [];
  List<String> selectedFuelType = [];
  List<String> selectedPopularity = [];
  TransmissionType transmissionType = TransmissionType.MANUAL;
  DriveType driveType = DriveType.RWD;
  String rtoCode = '';
  List<String> selectedNoOfOwner = [];
  String restoration = '';
  List<String> popularity = [];
  bool isCertified = false;
  SfRangeValues priceRange = SfRangeValues(200, 2000);
  SfRangeValues manufacturer = SfRangeValues(1960, 1980);
  SfRangeValues kmDriven = SfRangeValues(0, 200);

  ///Values To Take From Backend
  List<String> allBrandName = [
    'Maruti Suzuki',
    'Hyundai',
    'Tata Motors',
    'Mahindra',
    'Toyota',
    'Honda',
    'Kia',
    'Renault',
    'MG',
    'Skoda',
    'Volkswagen',
    'Nissan',
    'BMW'
  ];
  List<String> allModelName = [
    'Maruti Suzuki',
    'Hyundai',
    'Tata Motors',
    'Mahindra',
    'Toyota',
    'Honda',
    'Kia',
    'Renault',
    'MG',
    'Skoda',
    'Volkswagen',
    'Nissan',
    'BMW'
  ];
  List<String> allVariants = [];
  List<String> allFuelType = [];
  List<String> allNoOfOwner = [];
  List<String> allDriveType = [];
  List<String> allRestoration = [];
  List<String> allPopularity = [];
  List<int> rangeManufacturer = [1950, 1990];
  List<int> rangeKmDriven = [0, 200];
  List<int> availablePriceRange = [0, 2000];

  void changeFilterTab(int i) {
    currentTab = i;
    notifyListeners();
    checkSelectAll();
  }

  void checkSelectAll() {
    switch(currentTab) {
      case 0:
        if(allBrandName.length == selectedBrandName.length && allBrandName.isNotEmpty){
          isSelectAll = true;
        }else {
          isSelectAll = false;
        }
        notifyListeners();
        break;
      case 1:
        if(allModelName.length == selectedModelName.length && allModelName.isNotEmpty){
          isSelectAll = true;
        }else {
          isSelectAll = false;
        }
        notifyListeners();
        break;
      case 2:
        if(allVariants.length == selectedVariants.length && allVariants.isNotEmpty){
          isSelectAll = true;
        }else {
          isSelectAll = false;
        }
        notifyListeners();
        break;
      case 4:
        if(allFuelType.length == selectedFuelType.length && allFuelType.isNotEmpty){
          isSelectAll = true;
        }else {
          isSelectAll = false;
        }
        notifyListeners();
        break;
      case 8:
        if(allNoOfOwner.length == selectedNoOfOwner.length && allNoOfOwner.isNotEmpty){
          isSelectAll = true;
        }else {
          isSelectAll = false;
        }
        notifyListeners();
        break;
      case 12:
        if(allPopularity.length == selectedPopularity.length && allPopularity.isNotEmpty){
          isSelectAll = true;
        }else {
          isSelectAll = false;
        }
        notifyListeners();
        break;
      default: break;
    }
  }

  String getHintText() {
    switch(currentTab){
      case 0: return 'Search Brands';
      case 1: return 'Search Models';
      case 2: return 'Search Variants';
      case 4: return 'Search Fuel Type';
      case 7: return 'Search RTO, eg: MH-12 or Pune';
      default: return '';
    }
  }

  void selectAllTrigger() {
    List options = getCurrentTabOptions();
    if(!isSelectAll){
      for (var option in options) {
        selectCheckBoxOption(option);
      }
      isSelectAll = true;
    } else {
      for (var option in options) {
        unSelectCheckBoxOption(option);
      }
      isSelectAll = false;
    }
    notifyListeners();
  }

  void clearSelectedOptionsList(){
    switch(currentTab) {
      case 0:
        selectedBrandName.clear();
        notifyListeners();
        break;
      case 1:
        selectedModelName.clear();
        notifyListeners();
        break;
      case 2:
        selectedVariants.clear();
        notifyListeners();
        break;
      case 4:
        selectedFuelType.clear();
        notifyListeners();
        break;
      case 8:
        selectedNoOfOwner.clear();
        notifyListeners();
        break;
      case 12:
        selectedPopularity.clear();
        notifyListeners();
        break;
      default: break;
    }
  }

  List getCurrentTabOptions() {
    switch(currentTab) {
      case 0: return allBrandName;
      case 1: return allModelName;
      case 2: return allVariants;
      case 4: return allFuelType;
      case 8: return allNoOfOwner;
      case 12: return allPopularity;
      default: return [];
    }
  }

  void selectCheckBoxOption(option) {
    switch(currentTab) {
      case 0:
        if(!selectedBrandName.any((e) => e == option)){
          selectedBrandName.add(option);
        }
        notifyListeners();
        break;
      case 1:
        if(!selectedModelName.any((e) => e == option)){
          selectedModelName.add(option);
        }
        notifyListeners();
        break;
      case 2:
        if(!selectedVariants.any((e) => e == option)){
          selectedVariants.add(option);
        }
        notifyListeners();
        break;
      case 4:
        if(!selectedFuelType.any((e) => e == option)){
          selectedFuelType.add(option);
        }
        notifyListeners();
        break;
      case 8:
        if(!selectedNoOfOwner.any((e) => e == option)){
          selectedNoOfOwner.add(option);
        }
        notifyListeners();
        break;
      case 12:
        if(!selectedPopularity.any((e) => e == option)){
          selectedPopularity.add(option);
        }
        notifyListeners();
        break;
      default: break;
    }
  }

  bool checkPresentOrNot(option) {
    switch(currentTab) {
      case 0: return selectedBrandName.any((e) => e == option);
      case 1: return selectedModelName.any((e) => e == option);
      case 2: return selectedVariants.any((e) => e == option);
      case 4: return selectedFuelType.any((e) => e == option);
      case 8: return selectedFuelType.any((e) => e == option);
      case 12: return selectedPopularity.any((e) => e == option);
      default: return false;
    }
  }

  void unSelectCheckBoxOption(option) {
    switch(currentTab) {
      case 0:
        selectedBrandName.removeWhere((e) => e == option);
        notifyListeners();
        break;
      case 1:
        selectedModelName.removeWhere((e) => e == option);
        notifyListeners();
        break;
      case 2:
        selectedVariants.removeWhere((e) => e == option);
        notifyListeners();
        break;
      case 4:
        selectedFuelType.removeWhere((e) => e == option);
        notifyListeners();
        break;
      case 8:
        selectedNoOfOwner.removeWhere((e) => e == option);
        notifyListeners();
        break;
      case 12:
        selectedPopularity.removeWhere((e) => e == option);
        notifyListeners();
        break;
      default: break;
    }
  }

  void updateManufacturerRange(SfRangeValues values) {
    manufacturer = values;
    notifyListeners();
  }

  void updateKmDrivenRange(SfRangeValues values) {
    kmDriven = values;
    notifyListeners();
  }

  void updatePriceRange(SfRangeValues values) {
    priceRange = values;
    notifyListeners();
  }

  void updateCertifiedStatus(val) {
    isCertified = val;
    notifyListeners();
  }

  void updateRestorationLevel(String s) {
    restoration = s;
    notifyListeners();
  }

  void updateTransmissionSelection(TransmissionType t) {
    transmissionType = t;
    notifyListeners();
  }

  void updateDriveType(DriveType d) {
    driveType = d;
    notifyListeners();
  }
}