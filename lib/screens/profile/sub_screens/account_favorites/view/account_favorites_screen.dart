import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../util/comonents/product_grid_item.dart';
import '../../../../../util/model/product_state.dart';
import '../controller/account_favorites_screen_controller.dart';

class AccountFavoritesScreen extends GetView<AccountFavoritesScreenController> {
  static String routeName = '/favorites';

  const AccountFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        title: Text('MY_FAVORITES'.tr),
        actions: [
          IconButton(
            onPressed: controller.onPressedOrderBy,
            icon: SvgPicture.asset('assets/icons/order_by.svg'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: context.mediaQueryPadding.bottom),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: .78,
          ),
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
            top: 8,
          ),
          itemBuilder: (context, index) => const ProductGridItem(
            size: ProductGridItemSize.medium,
            adId: 1,
            productState: ProductState.brandNew,
            imageUrl:
                'https://apollo-ireland.akamaized.net/v1/files/cff4oo5dvi0n3-OLXAUTOTR/image',
            adTitle: 'Koltuk Takımı',
            price: 1200,
            isFavorite: true,
          ),
        ),
      ),
    );
  }
}
