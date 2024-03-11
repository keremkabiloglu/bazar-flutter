import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../controller/signin_screen_controller.dart';

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
            'EMAIL_PHONE_OR_USERNAME'.tr,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Get.theme.colorScheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 8),
            child: TextFormField(
              controller: controller.emailPhoneUsernameController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              validator: controller.emailPhoneOrUsernameValidator,
              decoration: InputDecoration(
                hintText: 'EMAIL_PHONE_OR_USERNAME'.tr.toLowerCase(),
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
                  hintText: 'PASSWORD'.tr.toLowerCase(),
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
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ElevatedButton(
              onPressed: controller.onPressedSignIn,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 48),
              ),
              child: Text('SIGNIN'.tr),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: Colors.black,
                    height: 36,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'OR'.tr,
                    style: TextStyle(
                      color: Get.theme.colorScheme.primary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Expanded(
                  child: Divider(
                    color: Colors.black,
                    height: 36,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: SignInWithAppleButton(
              height: 48,
              text: 'SIGN_IN_WITH_APPLE'.tr,
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(double.infinity, 48),
                padding: EdgeInsets.zero,
                backgroundColor: Colors.white,
                shadowColor: Colors.black.withOpacity(0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide.none,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/google-g.svg',
                    width: 21,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'SIGN_IN_WITH_GOOGLE'.tr,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 21,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
