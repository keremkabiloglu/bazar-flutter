import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/signup_screen_controller.dart';

class SignupScreen extends GetView<SignupScreenController> {
  static const String routeName = '/signup';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(bottom: context.height * .1, top: 12),
                  child: Text(
                    'CREATE_ACCOUNT'.tr,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Text(
                  '${'NAME'.tr} ${'SURNAME'.tr}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Get.theme.colorScheme.primary,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 8),
                  child: TextFormField(
                    //controller: controller.emailController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    //validator: controller.emailValidator,
                    decoration: InputDecoration(
                      hintText: '${'NAME'.tr} ${'SURNAME'.tr}'.toLowerCase(),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(
                          CupertinoIcons.person,
                          color: Get.theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: Text(
                        'PHONE_NUMBER'.tr,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Get.theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    const Icon(
                      CupertinoIcons.check_mark_circled_solid,
                      color: Colors.grey,
                      size: 16,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 8),
                  child: TextFormField(
                    //controller: controller.emailController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    //validator: controller.emailValidator,
                    decoration: InputDecoration(
                      hintText: '5XXXXXXXXX',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(
                          CupertinoIcons.phone,
                          color: Get.theme.colorScheme.primary,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'VERIFY'.tr,
                            style:
                                TextStyle(color: Get.theme.colorScheme.primary),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Text(
                //   'BIRTHDAY'.tr,
                //   style: TextStyle(
                //     fontSize: 16,
                //     fontWeight: FontWeight.w500,
                //     color: Get.theme.colorScheme.primary,
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 10, top: 8),
                //   child: TextFormField(
                //     //controller: controller.emailController,
                //     readOnly: true,
                //     onTap: () {},
                //     textInputAction: TextInputAction.next,
                //     keyboardType: TextInputType.emailAddress,
                //     //validator: controller.emailValidator,
                //     decoration: InputDecoration(
                //       hintText: 'GG/AA/YYYY',
                //       prefixIcon: Padding(
                //         padding: const EdgeInsets.all(12),
                //         child: Icon(
                //           CupertinoIcons.calendar,
                //           color: Get.theme.colorScheme.primary,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Text(
                  'PASSWORD'.tr,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Get.theme.colorScheme.primary,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24, top: 8),
                  child: TextFormField(
                    //controller: controller.passwordController,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    //obscureText: controller.obSecure.value,
                    //validator: controller.passwordValidator,
                    decoration: InputDecoration(
                      hintText: 'PASSWORD'.tr.toLowerCase(),
                      prefixIcon: Icon(
                        CupertinoIcons.lock,
                        color: Get.theme.colorScheme.primary,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {}, //controller.toggleObSecure,
                        icon: Icon(
                          CupertinoIcons.eye_slash,
                          color: Get.theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Checkbox(value: true, onChanged: (v) {}),
                      ),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: ''.tr,
                            children: [
                              TextSpan(
                                text: ' ${'Kullanıcı Sözleşmesini'.tr}',
                                style: TextStyle(
                                  color: Get.theme.colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                                //recognizer: TapGestureRecognizer()..onTap = () {},
                              ),
                              TextSpan(
                                text: ' ${'ve'.tr}',
                                style: TextStyle(
                                  color: Get.theme.colorScheme.primary,
                                ),
                              ),
                              TextSpan(
                                text: ' ${'KVKK Sözleşmesi'.tr}',
                                style: TextStyle(
                                  color: Get.theme.colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                                //recognizer: TapGestureRecognizer()..onTap = () {},
                              ),
                              TextSpan(
                                text:
                                    'kapsamında kişişel verilerimin işlenmesini kabul ediyorum.',
                                style: TextStyle(
                                  color: Get.theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: context.height * .1),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Checkbox(value: true, onChanged: (v) {}),
                      ),
                      Expanded(
                        child: Text(
                          'I_WANT_TO_RECEIVE_UPDATES'.tr,
                          style: TextStyle(
                            color: Get.theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(48),
                    ),
                    onPressed: () {},
                    child: Text('CREATE_ACCOUNT'.tr),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
