import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../util/services/app_service/app_service.dart';
import '../../../util/services/user_service/user_service.dart';
import '../../main/view/main_screen.dart';
import '../model/signin_request_dto.dart';

class SigninScreenController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailPhoneUsernameController = TextEditingController();
  final passwordController = TextEditingController();
  final obSecure = true.obs;

  @override
  void onInit() {
    if (kDebugMode) {
      emailPhoneUsernameController.text = '5318317326';
      passwordController.text = 'Kerem12353+';
    }
    super.onInit();
  }

  void toggleObSecure() {
    obSecure.value = !obSecure.value;
  }

  void onPressedSignIn() {
    if (formKey.currentState!.validate()) {
      Get.find<UserService>()
          .authUser(
        SigninRequestDto(
          emailPhoneUsername: emailPhoneUsernameController.text,
          password: passwordController.text,
        ),
      )
          .then((user) {
        if (user != null && user.authCookie != null) {
          Get.offAllNamed(MainScreen.routeName);
          Get.closeAllSnackbars();
          Get.find<AppService>().showSuccess(
            'WELCOME_@NAME'.trParams(
              {'name': user.firstName},
            ),
            title: 'SIGNIN_SUCCESS'.tr,
          );
        }
      });
    }
  }

  void onPressedForgotPassword() {}

  String? emailPhoneOrUsernameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'THIS_AREA_IS_REQUIRED'.tr;
    } else if (value.contains('@')) {
      if (!GetUtils.isEmail(value)) {
        return 'INVALID_EMAIL'.tr;
      }
    } else if (value.startsWith('05') || value.startsWith('5')) {
      if (value.length < 10 || value.length > 11) {
        return 'INVALID_PHONE_NUMBER'.tr;
      }
    } else if (value.length < 3) {
      return 'INVALID_USERNAME'.tr;
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'THIS_AREA_IS_REQUIRED'.tr;
    }
    return null;
  }
}
