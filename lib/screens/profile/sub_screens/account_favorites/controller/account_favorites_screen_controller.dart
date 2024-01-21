import 'package:get/get.dart';

import '../view/components/account_favorites_order_by_dialog.dart';

class AccountFavoritesScreenController extends GetxController {
  void onPressedOrderBy() {
    Get.dialog(const AccountFavoritesOrderByDialog());
  }
}
