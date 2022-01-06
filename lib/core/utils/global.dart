import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> checkConnection() async {
  ConnectivityResult result = await Connectivity().checkConnectivity();
  bool flag = result == ConnectivityResult.mobile ||
      result == ConnectivityResult.wifi;
  if(!flag){
    Get.snackbar("noInternetConnection".tr,"",snackPosition: SnackPosition.BOTTOM,colorText:Colors.white);
  }
  return flag;
}
