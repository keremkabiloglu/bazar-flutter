import 'package:bazar_flutter/util/services/user_service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountInformationScreenController extends GetxController {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final birthdayController = TextEditingController();
  final genderController = TextEditingController();
  late final DateTime accountCreationDate;

  @override
  void onInit() {
    _initAccountInformation();
    super.onInit();
  }

  void _initAccountInformation() {
    final user = Get.find<UserService>().user;
    if (user != null) {
      nameController.text = user.firstName;
      surnameController.text = user.lastName;
      usernameController.text = user.username;
      emailController.text = user.email;
      phoneController.text = '';
      birthdayController.text = '';
      genderController.text = user.gender.name.tr;
      accountCreationDate = user.createdAt;
    }
  }
}
