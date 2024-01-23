import 'package:get/get.dart';

import 'account_bank_accounts_screen_controller.dart';

class AccountBankAccountsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountBankAccountsScreenController());
  }
}
