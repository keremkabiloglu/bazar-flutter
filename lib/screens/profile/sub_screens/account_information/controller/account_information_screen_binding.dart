import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'account_information_screen_controller.dart';

class AccountInformationScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => AccountInformationScreenController(),
        ),
      ];
}
