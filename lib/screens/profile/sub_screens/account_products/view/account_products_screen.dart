import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/account_products_screen_controller.dart';

class AccountProductsScreen extends GetView<AccountProductsScreenController> {
  static const routeName = '/account_products';
  const AccountProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        title: Text('MY_PRODUCTS'.tr),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: TabBar(
              controller: controller.tabController,
              onTap: (i) {},
              isScrollable: true,
              tabs: [
                Text('ON_SALE_ADVERTS'.tr),
                Text('AWAITING_APPROVAL_ADVERTS'.tr),
                Text('DEACTIVE_ADVERTS'.tr),
                Text('DISAPPROVED_ADVERTS'.tr),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
