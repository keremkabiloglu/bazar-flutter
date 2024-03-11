import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../signup/view/signup_screen.dart';
import '../controller/signin_screen_controller.dart';
import 'components/signin_form.dart';

class SigninScreen extends GetView<SigninScreenController> {
  static const String routeName = '/signin';

  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: context.height * .1),
                child: Text(
                  'SIGNIN'.tr,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: SignInForm(
                    controller: controller,
                  ),
                ),
              ),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: 'DONT_HAVE_AN_ACCOUNT'.tr,
                    children: [
                      TextSpan(
                        text: ' ${'CREATE_ACCOUNT'.tr}',
                        style: TextStyle(
                          color: Get.theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(SignupScreen.routeName);
                          },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
