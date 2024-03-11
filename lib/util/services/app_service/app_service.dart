import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

class AppService extends GetxService {
  void showSuccess(String message, {String? title}) {
    Get.snackbar(
      title ?? 'SUCCESS'.tr,
      message,
      snackPosition: SnackPosition.top,
      backgroundColor: const Color(0xFF242424),
      colorText: Colors.white,
      margin: const EdgeInsets.all(16),
      borderRadius: 12,
      duration: const Duration(seconds: 2),
    );
  }

  void showError(String message) {
    Get.snackbar(
      'Error',
      message,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }
}
