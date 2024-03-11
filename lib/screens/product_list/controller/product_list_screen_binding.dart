import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'product_list_screen_controller.dart';

class ProductListScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => ProductListScreenController(),
        ),
      ];
}
