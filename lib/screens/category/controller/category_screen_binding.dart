import 'package:get/get.dart';

import 'category_screen_controller.dart';

class CategoryScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryScreenController());
  }
}
