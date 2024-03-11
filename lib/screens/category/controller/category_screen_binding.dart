import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'category_screen_controller.dart';

class CategoryScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => CategoryScreenController(),
        ),
      ];
}
