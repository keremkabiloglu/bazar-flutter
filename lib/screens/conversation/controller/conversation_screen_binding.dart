import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'conversation_screen_controller.dart';

class ConversationScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => ConversationScreenController(),
        ),
      ];
}
