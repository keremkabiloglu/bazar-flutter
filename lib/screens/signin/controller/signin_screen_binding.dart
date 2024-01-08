import 'package:get/get.dart';

import 'signin_repository.dart';

class SigninScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninRepository());
    Get.lazyPut(() => SigninScreenBinding());
  }
}
