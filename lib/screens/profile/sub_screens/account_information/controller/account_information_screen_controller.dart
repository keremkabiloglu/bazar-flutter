import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountInformationScreenController extends GetxController {
  final nameController = TextEditingController(text: 'John');
  final surnameController = TextEditingController(text: 'Doe');
  final usernameController = TextEditingController(text: '@john_doe');
  final emailController = TextEditingController(text: 'johndoe@example.com');
  final phoneController = TextEditingController(text: '+90 5XX XXX XX XX');
  final birthdayController = TextEditingController(text: '25.10.1999');
  final genderController = TextEditingController(text: 'MALE'.tr);
}
