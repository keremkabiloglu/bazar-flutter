import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../controller/account_products_screen_controller.dart';
import 'components/dissapproved_product_grid.dart';
import 'components/on_sale_product_grid.dart';
import 'components/passive_product_grid.dart';
import 'components/waiting_approval_product_grid.dart';

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
        actions: [
          IconButton(
            onPressed: controller.onPressedOrderBy,
            icon: SvgPicture.asset('assets/icons/order_by.svg'),
          ),
          IconButton(
            onPressed: controller.onPressedAddProduct,
            icon: const Icon(
              CupertinoIcons.add_circled,
              color: Color(0xFF242424),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Obx(
            () {
              return AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: controller.showTabBar.value ? 1 : 0,
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  child: SizedBox(
                    height: controller.showTabBar.value ? 48 : 0,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: TabBar(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              controller: controller.tabController,
                              onTap: (i) {},
                              isScrollable: true,
                              tabs: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('ON_SALE_ADVERTS'.tr),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: Text(
                                        '(123)',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xFF242424),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('AWAITING_APPROVAL_ADVERTS'.tr),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: Text(
                                        '(32)',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xFF242424),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('DEACTIVE_ADVERTS'.tr),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: Text(
                                        '(12)',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xFF242424),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('DISAPPROVED_ADVERTS'.tr),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: Text(
                                        '(4)',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xFF242424),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                OnSaleProductGrid(
                  controller: controller,
                ),
                WaitingApprovalProductGrid(
                  controller: controller,
                ),
                PassiveProductGrid(
                  controller: controller,
                ),
                DissapprovedProductGrid(
                  controller: controller,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: context.mediaQueryPadding.bottom,
            ),
          ),
        ],
      ),
    );
  }
}
