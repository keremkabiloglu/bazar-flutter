import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controller/sigin_screen_controller.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key, required this.controller});

  final SigninScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'EMAIL_ADDRESS'.tr,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Get.theme.colorScheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 8),
            child: TextFormField(
              controller: controller.emailController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              validator: controller.emailValidator,
              decoration: InputDecoration(
                hintText: 'EMAIL_ADDRESS'.tr.toLowerCase(),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset(
                    'assets/icons/mail.svg',
                  ),
                ),
              ),
            ),
          ),
          Text(
            'PASSWORD'.tr,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Get.theme.colorScheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 8),
            child: Obx(
              () => TextFormField(
                controller: controller.passwordController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                obscureText: controller.obSecure.value,
                validator: controller.passwordValidator,
                decoration: InputDecoration(
                  hintText: 'password'.tr.toLowerCase(),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(
                      'assets/icons/lock.svg',
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: controller.toggleObSecure,
                    icon: SvgPicture.asset(
                      'assets/icons/hide.svg',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: TextButton(
              onPressed: controller.onPressedForgotPassword,
              child: Text('FORGOT_MY_PASSWORD'.tr),
            ),
          ),
          ElevatedButton(
            onPressed: controller.onPressedSignIn,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 48),
            ),
            child: Text('SIGIN'.tr),
          ),
        ],
      ),
    );
  }
}
