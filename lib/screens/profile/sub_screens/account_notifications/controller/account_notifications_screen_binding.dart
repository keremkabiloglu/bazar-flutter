import 'package:get/get.dart';

import 'account_notifications_screen_controller.dart';

class AccountNotificationsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountNotificationsScreenController());
  }
}
