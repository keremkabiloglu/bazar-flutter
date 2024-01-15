import 'package:get/get.dart';

import 'account_products_screen_controller.dart';

class AccountProductsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountProductsScreenController());
  }
}
