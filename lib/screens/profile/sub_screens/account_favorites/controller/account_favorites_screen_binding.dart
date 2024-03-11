import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'account_favorites_screen_controller.dart';

class AccountFavoritesScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => AccountFavoritesScreenController(),
        ),
      ];
}
