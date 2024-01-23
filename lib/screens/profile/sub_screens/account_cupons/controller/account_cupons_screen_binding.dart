import 'package:get/get.dart';

import 'account_cupons_screen_controller.dart';

class AccountCuponsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountCuponsScreenController());
  }
}
