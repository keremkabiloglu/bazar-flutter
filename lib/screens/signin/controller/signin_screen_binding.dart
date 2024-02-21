import 'package:get/get.dart';

import 'signin_repository.dart';
import 'signin_screen_controller.dart';

class SigninScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninRepository());
    Get.lazyPut(() => SigninScreenController());
  }
}
