import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'account_bank_accounts_screen_controller.dart';

class AccountBankAccountsScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => AccountBankAccountsScreenController(),
        ),
      ];
}
