import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import '../../../util/comonents/webview_bottom_sheet.dart';
import '../../../util/extension.dart';
import '../../../util/services/app_service/app_service.dart';
import '../model/signup_request_dto.dart';
import 'signup_screen_repository.dart';

class SignupScreenController extends GetxController {
  final _repository = Get.find<SignupScreenRepository>();

  final formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final contractsAccepted = false.obs;
  final campaignAccepted = true.obs;
  final obSecure = false.obs;
  final verifyPhoneButtonEnabled = false.obs;
  final phoneVerified = false.obs;

  void onPressedShowPassword() {
    obSecure.value = !obSecure.value;
  }

  void onPhoneNumberChanged(String value) {
    verifyPhoneButtonEnabled.value = phoneNumberValidator(value) == null;
  }

  void onContractsAcceptedChanged(
    bool? value,
    FormFieldState<bool> fieldState,
  ) {
    contractsAccepted.value = value ?? false;
    fieldState.didChange(contractsAccepted.value);
  }

  void onCampaignAcceptedChanged(bool? value) {
    campaignAccepted.value = value ?? false;
  }

  void onPressedCreateAccount() {
    if (formKey.currentState!.validate()) {
      final fullName = fullNameController.text.capitalizeFirstChars;
      final surname = fullName.split(' ').last;
      final name =
          fullName.split(' ').map((e) => e != surname ? e : '').join(' ');
      final request = SignupRequestDto(
        name: name.characters.last == ' '
            ? name.substring(0, name.length - 1)
            : name,
        surname: surname,
        phoneNumber: '+90${phoneNumberController.text}',
        password: passwordController.text,
        campaignConfirmed: campaignAccepted.value,
      );
      _repository.createAccount(request).then((user) {
        if (user != null) {
          Get.offAllNamed('/');
          Get.closeAllSnackbars();
          Get.find<AppService>().showSuccess('SIGNIN_SUCCESS'.tr);
        }
      });
    }
  }

  void showUserContract() {
    WebViewBottomSheet(url: 'https://www.google.com.tr/').show();
  }

  void showKvkkContract() {
    WebViewBottomSheet(url: 'https://www.google.com.tr/').show();
  }

  String? fullNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'THIS_AREA_IS_REQUIRED'.tr;
    }
    final nameRegExp = RegExp(r'^[a-zA-ZÇçĞğİıÖöŞşÜü\s]*$');
    if (!nameRegExp.hasMatch(value)) {
      return 'INVALID_FULL_NAME'.tr;
    }
    final nameParts = value.trim().split(' ');
    if (nameParts.length < 2 && nameParts.length > 3) {
      return 'INVALID_FULL_NAME'.tr;
    }
    return null;
  }

  String? phoneNumberValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'THIS_AREA_IS_REQUIRED'.tr;
    }
    final phoneRegExp = RegExp(r'^5\d{9}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'INVALID_PHONE_NUMBER'.tr;
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'THIS_AREA_IS_REQUIRED'.tr;
    }
    final regex = RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,32}$');
    if (!regex.hasMatch(value)) {
      return 'PASSWORD_SECURITY_ERROR'.tr;
    }
    return null;
  }

  String? contractsAcceptedValidator(bool? value) {
    if (value == null || !value) {
      return 'THIS_AREA_IS_REQUIRED'.tr;
    }
    return null;
  }
}
