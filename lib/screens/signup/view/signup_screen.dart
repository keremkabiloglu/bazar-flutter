import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          child: Form(
            key: controller.formKey,
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
                      controller: controller.fullNameController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      validator: controller.fullNameValidator,
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
                      Icon(
                        CupertinoIcons.check_mark_circled_solid,
                        color: controller.phoneVerified.value
                            ? Colors.lightGreen
                            : Colors.grey,
                        size: 16,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 8),
                    child: TextFormField(
                      controller: controller.phoneNumberController,
                      onChanged: controller.onPhoneNumberChanged,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 10,
                      buildCounter: (
                        BuildContext context, {
                        required int currentLength,
                        required int? maxLength,
                        required bool isFocused,
                      }) {
                        return const SizedBox();
                      },
                      keyboardType: TextInputType.phone,
                      validator: controller.phoneNumberValidator,
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
                          padding: const EdgeInsets.only(right: 10),
                          child: Obx(
                            () => TextButton(
                              onPressed:
                                  controller.verifyPhoneButtonEnabled.value
                                      ? () {}
                                      : null,
                              child: Text(
                                'VERIFY'.tr,
                              ),
                            ),
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
                    padding: const EdgeInsets.only(bottom: 24, top: 8),
                    child: Obx(
                      () => TextFormField(
                        controller: controller.passwordController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: controller.obSecure.value,
                        validator: controller.passwordValidator,
                        decoration: InputDecoration(
                          hintText: 'PASSWORD'.tr.toLowerCase(),
                          prefixIcon: Icon(
                            CupertinoIcons.lock,
                            color: Get.theme.colorScheme.primary,
                          ),
                          suffixIcon: IconButton(
                            onPressed: controller.onPressedShowPassword,
                            icon: Icon(
                              controller.obSecure.value
                                  ? CupertinoIcons.eye
                                  : CupertinoIcons.eye_slash,
                              color: Get.theme.colorScheme.primary,
                            ),
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
                          child: FormField(
                            initialValue: controller.contractsAccepted.value,
                            validator: controller.contractsAcceptedValidator,
                            builder: (state) => Obx(
                              () => Checkbox(
                                value: controller.contractsAccepted.value,
                                side: BorderSide(
                                  color: state.errorText != null
                                      ? Colors.redAccent
                                      : Get.theme.colorScheme.primary,
                                ),
                                onChanged: (value) => controller
                                    .onContractsAcceptedChanged(value, state),
                              ),
                            ),
                          ),
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
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = controller.showUserContract,
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
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = controller.showKvkkContract,
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
                          child: Obx(
                            () => Checkbox(
                              value: controller.campaignAccepted.value,
                              onChanged: controller.onCampaignAcceptedChanged,
                            ),
                          ),
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
                      onPressed: controller.onPressedCreateAccount,
                      child: Text('CREATE_ACCOUNT'.tr),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
