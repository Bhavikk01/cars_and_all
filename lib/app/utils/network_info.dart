import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class NetworkInfo {
  final Connectivity? connectivity;
  NetworkInfo(this.connectivity);

  Future<bool> get isConnected async {
    ConnectivityResult result = await connectivity!.checkConnectivity();
    return result != ConnectivityResult.none;
  }

  static void checkConnectivity(BuildContext context) {
    bool firstTime = true;
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) async {
      if(!firstTime) {
        bool isNotConnected;
        if(result == ConnectivityResult.none) {
          isNotConnected = true;
        }else {
          isNotConnected = !await (_updateConnectivityStatus() as FutureOr<bool>);
        }
        if(isNotConnected){
          ///TODO: Have to implement method
        } else {
          ///TODO: Have to implement method
        }
      }
      firstTime = false;
    });
  }

  static Future<bool?> _updateConnectivityStatus() async {
    bool? isConnected;
    try {
      final List<InternetAddress> result = await InternetAddress.lookup('google.com');
      if(result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        isConnected = true;
      }
    }catch(e) {
      isConnected = false;
    }
    return isConnected;
  }
}
