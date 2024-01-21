import 'package:get/get.dart';

import 'account_buyings_screen_controller.dart';

class AccountBuyingsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountBuyingsScreenController());
  }
}
