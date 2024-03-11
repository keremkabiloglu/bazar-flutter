import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'account_notifications_screen_controller.dart';

class AccountNotificationsScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => AccountNotificationsScreenController(),
        ),
      ];
}
