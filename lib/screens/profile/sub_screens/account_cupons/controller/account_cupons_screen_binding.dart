import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'account_cupons_screen_controller.dart';

class AccountCuponsScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => AccountCuponsScreenController(),
        ),
      ];
}
