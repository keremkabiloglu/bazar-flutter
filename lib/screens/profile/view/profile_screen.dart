import 'package:bazar_flutter/screens/profile/sub_screens/account_addresses/view/account_addresses_screen.dart';
import 'package:bazar_flutter/screens/profile/sub_screens/account_bank_accounts/view/account_bank_accounts_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/profile_screen_controller.dart';
import '../sub_screens/account_buyings/view/account_buyings_screen.dart';
import '../sub_screens/account_cupons/view/account_cupons_screen.dart';
import '../sub_screens/account_favorites/view/account_favorites_screen.dart';
import '../sub_screens/account_information/view/account_information_screen.dart';
import '../sub_screens/account_notifications/view/account_notifications_screen.dart';
import '../sub_screens/account_orders/view/account_orders_screen.dart';
import '../sub_screens/account_products/view/account_products_screen.dart';
import 'components/profile_menu_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileScreenController>(
      init: ProfileScreenController(),
      builder: (controller) => ListView(
        shrinkWrap: true,
        children: [
          ProfileMenuItem(
            title: 'MY_ACCOUNT_INFORMATION'.tr,
            iconAsset: 'assets/icons/my_account.svg',
            onPressed: () {
              Get.toNamed(AccountInformationScreen.routeName);
            },
          ),
          ProfileMenuItem(
            title: 'MY_PRODUCTS'.tr,
            iconAsset: 'assets/icons/products.svg',
            onPressed: () {
              Get.toNamed(AccountProductsScreen.routeName);
            },
          ),
          ProfileMenuItem(
            title: 'MY_FAVORITES'.tr,
            iconAsset: 'assets/icons/heart.svg',
            iconColor: const Color(0xFF242424).withOpacity(.75),
            onPressed: () {
              Get.toNamed(AccountFavoritesScreen.routeName);
            },
          ),
          ProfileMenuItem(
            title: 'MY_SALES'.tr,
            iconAsset: 'assets/icons/try.svg',
            onPressed: () {
              Get.toNamed(AccountOrdersScreen.routeName);
            },
          ),
          ProfileMenuItem(
            title: 'MY_BUYINGS'.tr,
            iconAsset: 'assets/icons/shopping_cart.svg',
            onPressed: () {
              Get.toNamed(AccountBuyingsScreen.routeName);
            },
          ),
          ProfileMenuItem(
            title: 'MY_NOTIFICATIONS'.tr,
            iconAsset: 'assets/icons/box.svg',
            badgeCount: 1000,
            onPressed: () {
              Get.toNamed(AccountNotificationsScreen.routeName);
            },
          ),
          ProfileMenuItem(
            title: 'ANALYTICS'.tr,
            iconAsset: 'assets/icons/settings.svg',
            onPressed: () {},
          ),
          ProfileMenuItem(
            title: 'MY_CUPONS'.tr,
            iconAsset: 'assets/icons/cupon.svg',
            onPressed: () {
              Get.toNamed(AccountCuponsScreen.routeName);
            },
          ),
          ProfileMenuItem(
            title: 'MY_ADDRESSES'.tr,
            iconAsset: 'assets/icons/my_address.svg',
            onPressed: () {
              Get.toNamed(AccountAddressesScreen.routeName);
            },
          ),
          ProfileMenuItem(
            title: 'MY_BANK_ACCOUNTS'.tr,
            iconAsset: 'assets/icons/cash.svg',
            onPressed: () {
              Get.toNamed(AccountBankAccountsScreen.routeName);
            },
          ),
          ProfileMenuItem(
            title: 'SUPPORT'.tr,
            iconAsset: 'assets/icons/lamp.svg',
            onPressed: () {},
          ),
          ProfileMenuItem(
            title: 'SETTINGS'.tr,
            iconAsset: 'assets/icons/gear.svg',
            onPressed: () {},
          ),
          ProfileMenuItem(
            title: 'LOGOUT'.tr,
            color: const Color(0xFFDF0707),
            iconAsset: 'assets/icons/exit.svg',
            onPressed: () {},
          ),
          SizedBox(
            height: Get.context!.mediaQuery.padding.bottom + 70,
          )
        ],
      ),
    );
  }
}
