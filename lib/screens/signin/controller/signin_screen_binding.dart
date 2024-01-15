import 'package:get/get.dart';

import 'sigin_screen_controller.dart';
import 'signin_repository.dart';

class SigninScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninRepository());
    Get.lazyPut(() => SigninScreenController());
  }
}
