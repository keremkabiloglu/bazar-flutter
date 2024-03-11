import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'account_buyings_screen_controller.dart';

class AccountBuyingsScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => AccountBuyingsScreenController(),
        ),
      ];
}
