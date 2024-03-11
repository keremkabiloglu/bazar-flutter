import 'package:bazar_service_lib/bazar_service_lib.dart';

import 'signup_screen_controller.dart';
import 'signup_screen_repository.dart';

class SignupScreenBinding extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(
          () => SignupScreenController(),
        ),
        Bind.lazyPut(
          () => SignupScreenRepository(),
        ),
      ];
}
