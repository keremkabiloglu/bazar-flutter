import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/account_information_screen_controller.dart';

class AccountInformationScreen
    extends GetView<AccountInformationScreenController> {
  static const routeName = '/account_information';
  const AccountInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        title: Text('MY_ACCOUNT_INFORMATION'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text('NAME'.tr),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        enabled: false,
                        controller: controller.nameController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.person),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text('SURNAME'.tr),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        enabled: false,
                        controller: controller.surnameController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.group),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text('USER_NAME'.tr),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        controller: controller.usernameController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.alt),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text('EMAIL_ADDRESS'.tr),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        enabled: false,
                        controller: controller.emailController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.alt),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text('PHONE_NUMBER'.tr),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        enabled: false,
                        controller: controller.phoneController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.phone),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text('BIRTHDAY'.tr),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        controller: controller.birthdayController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.calendar),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text('GENDER'.tr),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        controller: controller.genderController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.add),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ACCOUNT_CREATION_DATE'.tr,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '12.01.2024'.tr,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'LAST_UNSUCCESS_LOGIN_ATTEMPT'.tr,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '09.01.2024'.tr,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: context.mediaQuery.padding.bottom,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {},
                child: Text('SAVE_CHANGES'.tr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
