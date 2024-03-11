import 'package:bazar_service_lib/bazar_service_lib.dart';

import '../screens/category/controller/category_screen_binding.dart';
import '../screens/category/view/category_screen.dart';
import '../screens/conversation/controller/conversation_screen_binding.dart';
import '../screens/conversation/view/conversation_screen.dart';
import '../screens/main/controller/main_screen_binding.dart';
import '../screens/main/view/main_screen.dart';
import '../screens/product/view/product_screen.dart';
import '../screens/product_list/controller/product_list_screen_binding.dart';
import '../screens/product_list/view/product_list_screen.dart';
import '../screens/profile/sub_screens/account_addresses/controller/account_addresses_screen_binding.dart';
import '../screens/profile/sub_screens/account_addresses/view/account_addresses_screen.dart';
import '../screens/profile/sub_screens/account_bank_accounts/controller/account_bank_account_screen_binding.dart';
import '../screens/profile/sub_screens/account_bank_accounts/view/account_bank_accounts_screen.dart';
import '../screens/profile/sub_screens/account_buyings/controller/account_buyings_screen_binding.dart';
import '../screens/profile/sub_screens/account_buyings/view/account_buyings_screen.dart';
import '../screens/profile/sub_screens/account_cupons/controller/account_cupons_screen_binding.dart';
import '../screens/profile/sub_screens/account_cupons/view/account_cupons_screen.dart';
import '../screens/profile/sub_screens/account_favorites/controller/account_favorites_screen_binding.dart';
import '../screens/profile/sub_screens/account_favorites/view/account_favorites_screen.dart';
import '../screens/profile/sub_screens/account_information/controller/account_information_screen_binding.dart';
import '../screens/profile/sub_screens/account_information/view/account_information_screen.dart';
import '../screens/profile/sub_screens/account_notifications/controller/account_notifications_screen_binding.dart';
import '../screens/profile/sub_screens/account_notifications/view/account_notifications_screen.dart';
import '../screens/profile/sub_screens/account_orders/controller/account_orders_screen_binding.dart';
import '../screens/profile/sub_screens/account_orders/view/account_orders_screen.dart';
import '../screens/profile/sub_screens/account_products/controller/account_products_screen_binding.dart';
import '../screens/profile/sub_screens/account_products/view/account_products_screen.dart';
import '../screens/search/controller/search_screen_binding.dart';
import '../screens/search/view/search_screen.dart';
import '../screens/signin/controller/signin_screen_binding.dart';
import '../screens/signin/view/signin_screen.dart';
import '../screens/signup/controller/signup_screen_binding.dart';
import '../screens/signup/view/signup_screen.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: SigninScreen.routeName,
      page: () => const SigninScreen(),
      binding: SigninScreenBinding(),
    ),
    GetPage(
      name: SignupScreen.routeName,
      page: () => const SignupScreen(),
      binding: SignupScreenBinding(),
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
    GetPage(
      name: AccountFavoritesScreen.routeName,
      page: () => const AccountFavoritesScreen(),
      binding: AccountFavoritesScreenBinding(),
    ),
    GetPage(
      name: AccountOrdersScreen.routeName,
      page: () => const AccountOrdersScreen(),
      binding: AccountOrdersScreenBinding(),
    ),
    GetPage(
      name: AccountBuyingsScreen.routeName,
      page: () => const AccountBuyingsScreen(),
      binding: AccountBuyingsScreenBinding(),
    ),
    GetPage(
      name: AccountNotificationsScreen.routeName,
      page: () => const AccountNotificationsScreen(),
      binding: AccountNotificationsScreenBinding(),
    ),
    GetPage(
      name: AccountCuponsScreen.routeName,
      page: () => const AccountCuponsScreen(),
      binding: AccountCuponsScreenBinding(),
    ),
    GetPage(
      name: AccountAddressesScreen.routeName,
      page: () => const AccountAddressesScreen(),
      binding: AccountAddressesScreenBinding(),
    ),
    GetPage(
      name: AccountBankAccountsScreen.routeName,
      page: () => const AccountBankAccountsScreen(),
      binding: AccountBankAccountsScreenBinding(),
    ),
    GetPage(
      name: ProductScreen.routeName,
      page: () => const ProductScreen(),
    ),
  ];
}
