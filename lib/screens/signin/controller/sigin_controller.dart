import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/services/app_service/app_service.dart';
import '../../../util/services/user_service/user_service.dart';
import '../../main/view/main_screen.dart';
import '../model/signin_request_dto.dart';
import 'signin_repository.dart';

class SigninController extends GetxController {
  final _repository = Get.find<SigninRepository>();
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final obSecure = true.obs;

  @override
  void onInit() {
    if (kDebugMode) {
      emailController.text = 'example@example.com';
      passwordController.text = 'kerem123';
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
        SiginRequestDto(
          email: emailController.text,
          password: passwordController.text,
        ),
      )
          .then((user) {
        if (user != null && user.authCookie != null) {
          Get.offAllNamed(MainScreen.routeName);
          Get.find<AppService>().showSuccess(
            'WELCOME_@NAME'.trParams(
              {'name': user.firstName},
            ),
            title: 'SIGIN_SUCCESS'.tr,
          );
        }
      });
    }
  }

  void onPressedForgotPassword() {}

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'E-Posta Adresi Boş Olamaz';
    } else if (!GetUtils.isEmail(value)) {
      return 'Geçerli Bir E-Posta Adresi Giriniz';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Şifre Boş Olamaz';
    }
    return null;
  }
}
