import 'package:get/get.dart';

import 'signup_screen_controller.dart';
import 'signup_screen_repository.dart';

class SignupScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupScreenRepository());
    Get.lazyPut(() => SignupScreenController());
  }
}
