import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/sigin_screen_controller.dart';
import 'components/signin_form.dart';

class SigninScreen extends GetView<SigninScreenController> {
  static const String routeName = '/signin';

  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SignInForm(
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
