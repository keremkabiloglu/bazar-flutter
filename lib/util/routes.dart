import 'package:get/get.dart';

import '../screens/signin/view/signin_screen.dart';

class AppPages {
  static const String initial = SigninScreen.routeName;

  static List<GetPage> pages = [
    GetPage(
      name: SigninScreen.routeName,
      page: () => const SigninScreen(),
    ),
  ];
}
