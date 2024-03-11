import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'search_screen_controller.dart';

class SearchScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => SearchScreenController(),
        ),
      ];
}
