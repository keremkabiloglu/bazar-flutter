import 'package:get/get.dart';

import '../../account_favorites/controller/account_favorites_screen_controller.dart';

class AccountOrdersScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountFavoritesScreenController());
  }
}
