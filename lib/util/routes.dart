import 'package:get/get.dart';

import '../screens/category/controller/category_screen_binding.dart';
import '../screens/category/view/category_screen.dart';
import '../screens/main/controller/main_screen_binding.dart';
import '../screens/main/view/main_screen.dart';
import '../screens/product_list/controller/product_list_screen_binding.dart';
import '../screens/product_list/view/product_list_screen.dart';
import '../screens/search/controller/search_screen_binding.dart';
import '../screens/search/view/search_screen.dart';
import '../screens/signin/controller/signin_screen_binding.dart';
import '../screens/signin/view/signin_screen.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: SigninScreen.routeName,
      page: () => const SigninScreen(),
      binding: SigninScreenBinding(),
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
    GetPage(
      name: CategoryScreen.routeName,
      page: () => const CategoryScreen(),
      binding: CategoryScreenBinding(),
    ),
    GetPage(
      name: ProductListScreen.routeName,
      page: () => const ProductListScreen(),
      binding: ProductListScreenBinding(),
    ),
  ];
}
