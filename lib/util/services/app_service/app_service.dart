import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppService extends GetxService {
  void showError(String message) {
    Get.snackbar(
      'Error',
      message,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }
}
