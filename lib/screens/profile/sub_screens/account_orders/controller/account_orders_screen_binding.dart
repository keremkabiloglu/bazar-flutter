import 'package:bazar_service_lib/bazar_service_lib.dart';

import '../../account_favorites/controller/account_favorites_screen_controller.dart';

class AccountOrdersScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => AccountFavoritesScreenController(),
        ),
      ];
}
