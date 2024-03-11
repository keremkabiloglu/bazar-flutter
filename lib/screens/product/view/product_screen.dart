import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controller/product_screen_controller.dart';
import 'components/product_attributes.dart';
import 'components/product_details.dart';
import 'components/product_name_seller.dart';
import 'components/product_other_products.dart';
import 'components/product_photos.dart';
import 'components/product_price_condition.dart';
import 'components/product_screen_bottom_navigation_bar.dart';
import 'components/product_tabs.dart';

class ProductScreen extends StatelessWidget {
  static const routeName = '/product/:id';

  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductScreenController>(
      init: ProductScreenController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.heart),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
            ),
          ],
        ),
        bottomNavigationBar: const ProductScreenBottomNavigationBar(),
        body: ListView(
          controller: controller.pageScrollController,
          children: [
            ProductPhotos(
              controller: controller,
            ),
            ProductNameSeller(
              controller: controller,
            ),
            ProductPriceCondition(
              controller: controller,
            ),
            ProductAttributes(
              controller: controller,
            ),
            ProductDetails(
              controller: controller,
            ),
            ProductTabs(
              controller: controller,
            ),
            ProductOtherProducts(
              title: 'SIMILAR_PRODUCTS'.tr,
            ),
            ProductOtherProducts(
              title: 'SELLER_OTHER_PRODUCTS'.tr,
            ),
          ],
        ),
      ),
    );
  }
}
