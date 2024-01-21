import 'package:flutter/material.dart';

import '../../../../../../util/comonents/product_grid_item.dart';
import '../../../../../../util/model/product_state.dart';
import '../../controller/account_products_screen_controller.dart';

class DissapprovedProductGrid extends StatelessWidget {
  const DissapprovedProductGrid({super.key, required this.controller});

  final AccountProductsScreenController controller;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: .78,
      ),
      padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
      controller: controller.tabViewScrollControllers[3],
      itemBuilder: (context, index) => const ProductGridItem(
        size: ProductGridItemSize.medium,
        adId: 1,
        productState: ProductState.brandNew,
        imageUrl:
            'https://apollo-ireland.akamaized.net/v1/files/cff4oo5dvi0n3-OLXAUTOTR/image',
        adTitle: 'Koltuk Takımı',
        price: 1200,
        isDisapproved: true,
      ),
    );
  }
}
