import 'package:get/get.dart';

import '../screens/main/controller/main_screen_binding.dart';
import '../screens/main/view/main_screen.dart';
import '../screens/search/controller/search_screen_binding.dart';
import '../screens/search/view/search_screen.dart';
import '../screens/signin/controller/signin_binding.dart';
import '../screens/signin/view/signin_screen.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: SigninScreen.routeName,
      page: () => const SigninScreen(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: MainScreen.routeName,
      page: () => const MainScreen(),
      binding: MainScreenBinding(),
    ),
    GetPage(
      name: SearchScreen.routeName,
      page: () => const SearchScreen(),
      binding: SearchScreenBinding(),
    ),
  ];
}
