import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'main_screen_controller.dart';

class MainScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => MainScreenController(),
        ),
      ];
}
