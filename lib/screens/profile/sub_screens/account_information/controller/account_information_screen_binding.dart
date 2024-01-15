import 'package:get/get.dart';

import 'account_information_screen_controller.dart';

class AccountInformationScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountInformationScreenController());
  }
}
