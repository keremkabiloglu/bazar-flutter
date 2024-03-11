import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'account_products_screen_controller.dart';

class AccountProductsScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => AccountProductsScreenController(),
        ),
      ];
}
