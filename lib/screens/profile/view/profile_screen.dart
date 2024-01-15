import 'package:bazar_flutter/screens/profile/sub_screens/account_products/view/account_products_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/profile_screen_controller.dart';
import '../sub_screens/account_information/view/account_information_screen.dart';
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
            iconAsset: 'assets/icons/products.svg',
            onPressed: () {},
          ),
          ProfileMenuItem(
            title: 'MY_SALES'.tr,
            iconAsset: 'assets/icons/try.svg',
            onPressed: () {},
          ),
          ProfileMenuItem(
            title: 'MY_BUYINGS'.tr,
            iconAsset: 'assets/icons/shopping_cart.svg',
            onPressed: () {},
          ),
          ProfileMenuItem(
            title: 'MY_LAST_PROCESSES'.tr,
            iconAsset: 'assets/icons/list.svg',
            onPressed: () {},
          ),
          ProfileMenuItem(
            title: 'ANALYTICS'.tr,
            iconAsset: 'assets/icons/settings.svg',
            onPressed: () {},
          ),
          ProfileMenuItem(
            title: 'MY_CUPONS'.tr,
            iconAsset: 'assets/icons/cupon.svg',
            onPressed: () {},
          ),
          ProfileMenuItem(
            title: 'MY_ADDRESSES'.tr,
            iconAsset: 'assets/icons/my_address.svg',
            onPressed: () {},
          ),
          ProfileMenuItem(
            title: 'MY_BANK_ACCOUNTS'.tr,
            iconAsset: 'assets/icons/cash.svg',
            onPressed: () {},
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