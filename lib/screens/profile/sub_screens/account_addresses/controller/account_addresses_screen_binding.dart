import 'package:get/get.dart';

import 'account_addresses_screen_controller.dart';

class AccountAddressesScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountAddressesScreenController());
  }
}
