import 'package:get/get.dart';

import 'product_list_screen_controller.dart';

class ProductListScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductListScreenController());
  }
}
