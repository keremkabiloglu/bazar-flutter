import 'package:get/get.dart';

import 'sigin_controller.dart';
import 'signin_repository.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninRepository());
    Get.lazyPut(() => SigninController());
  }
}
