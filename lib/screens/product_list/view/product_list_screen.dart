import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../util/comonents/product_grid_item.dart';
import '../../../util/model/product_state.dart';
import '../controller/product_list_screen_controller.dart';
import 'components/product_list_app_bar.dart';
import 'components/product_list_filter_side_bar.dart';

class ProductListScreen extends GetView<ProductListScreenController> {
  static const routeName = '/product-list/:categoryId';

  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffolKey,
      appBar: ProductListAppBar(
        controller: controller,
      ),
      endDrawer: ProductListFilterSideBar(
        controller: controller,
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          axisDirection: AxisDirection.down,
          children: controller.demoProducts.map<Widget>(
                (e) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: ProductGridItem(
                      size: ProductGridItemSize.large,
                      adTitle: e,
                      price: 100,
                      productState: ProductState.brandNew,
                      adId: 1,
                      imageUrl:
                          'https://specials-images.forbesimg.com/imageserve/5e19e7a3da6d380006295c72//960x0.jpg?fit=scale',
                    ),
                  );
                },
              ).toList() +
              [SizedBox(height: Get.context!.mediaQuery.padding.bottom)],
        ),
      ),
    );
  }
}
