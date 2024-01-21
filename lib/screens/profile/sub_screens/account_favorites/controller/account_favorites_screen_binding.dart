import 'package:get/get.dart';

import 'account_favorites_screen_controller.dart';

class AccountFavoritesScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountFavoritesScreenController());
  }
}
