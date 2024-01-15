import 'package:get/get.dart';

import '../screens/category/controller/category_screen_binding.dart';
import '../screens/category/view/category_screen.dart';
import '../screens/conversation/controller/conversation_screen_binding.dart';
import '../screens/conversation/view/conversation_screen.dart';
import '../screens/main/controller/main_screen_binding.dart';
import '../screens/main/view/main_screen.dart';
import '../screens/product_list/controller/product_list_screen_binding.dart';
import '../screens/product_list/view/product_list_screen.dart';
import '../screens/profile/sub_screens/account_information/controller/account_information_screen_binding.dart';
import '../screens/profile/sub_screens/account_information/view/account_information_screen.dart';
import '../screens/profile/sub_screens/account_products/controller/account_products_screen_binding.dart';
import '../screens/profile/sub_screens/account_products/view/account_products_screen.dart';
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
    GetPage(
      name: ConversationScreen.routeName,
      page: () => const ConversationScreen(),
      binding: ConversationScreenBinding(),
    ),
    GetPage(
      name: AccountInformationScreen.routeName,
      page: () => const AccountInformationScreen(),
      binding: AccountInformationScreenBinding(),
    ),
    GetPage(
      name: AccountProductsScreen.routeName,
      page: () => const AccountProductsScreen(),
      binding: AccountProductsScreenBinding(),
    ),
  ];
}
