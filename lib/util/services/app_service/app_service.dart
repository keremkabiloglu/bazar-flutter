import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../screens/main/view/main_screen.dart';
import '../../../screens/signin/view/signin_screen.dart';
import '../user_service/user_service.dart';

class AppService extends GetxService {
  String get initialRoute {
    final userService = Get.find<UserService>();
    return userService.user != null &&
            userService.user!.authCookie != null &&
            userService.user!.refreshCookie != null
        ? MainScreen.routeName
        : SigninScreen.routeName;
  }

  void showSuccess(String message, {String? title}) {
    Get.snackbar(
      title ?? 'SUCCESS'.tr,
      message,
      snackPosition: SnackPosition.TOP,
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
