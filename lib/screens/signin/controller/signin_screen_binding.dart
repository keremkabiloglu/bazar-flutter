import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'signin_screen_controller.dart';

class SigninScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => SigninScreenController(),
        ),
      ];
}
