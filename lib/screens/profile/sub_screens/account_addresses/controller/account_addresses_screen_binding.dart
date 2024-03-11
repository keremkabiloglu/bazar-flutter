import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'account_addresses_screen_controller.dart';

class AccountAddressesScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => AccountAddressesScreenController(),
        ),
      ];
}
