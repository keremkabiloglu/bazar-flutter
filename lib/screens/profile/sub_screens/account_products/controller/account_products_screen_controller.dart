import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../view/components/account_products_order_by_dialog.dart';

class AccountProductsScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController;
  final tabViewScrollControllers = <ScrollController>[];
  final showTabBar = Rx<bool>(true);

  @override
  void onInit() {
    tabController = TabController(
      length: 4,
      vsync: this,
    );
    for (var i = 0; i < tabController.length; i++) {
      tabViewScrollControllers.add(ScrollController());
      _addHideListener(tabViewScrollControllers[i]);
    }
    super.onInit();
  }

  void onPressedOrderBy() {
    Get.dialog(const AccountProductsOrderByDialog());
  }

  void onPressedAddProduct() {}

  void _addHideListener(ScrollController controller) {
    controller.addListener(() {
      if (controller.position.userScrollDirection == ScrollDirection.forward) {
        showTabBar.value = true;
      } else {
        showTabBar.value = false;
      }
    });
  }
}
