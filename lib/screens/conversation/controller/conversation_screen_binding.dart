import 'package:get/get.dart';

import 'conversation_screen_controller.dart';

class ConversationScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConversationScreenController());
  }
}
