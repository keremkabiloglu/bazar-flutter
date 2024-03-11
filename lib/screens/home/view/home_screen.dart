import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../util/comonents/product_grid_item.dart';
import '../../../util/model/product_state.dart';
import '../controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      autoRemove: false,
      global: false,
      builder: (controller) {
        return Column(
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
                                controller: controller.tabController,
                                onTap: controller.onTabPressed,
                                isScrollable: true,
                                tabs: [
                                  Text('FLOW'.tr),
                                  Text('FOLLOWING'.tr),
                                  Text('NEARBY'.tr),
                                  Text('SPECIAL_FOR_YOU'.tr),
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
                  for (int i = 0; i < 4; i++)
                    SingleChildScrollView(
                      controller: controller.tabViewScrollControllers[i],
                      child: StaggeredGrid.count(
                        crossAxisCount: 2,
                        axisDirection: AxisDirection.down,
                        children: controller.demoProducts.map<Widget>(
                              (e) {
                                final size =
                                    controller.demoProducts.indexOf(e) % 2 == 0
                                        ? ProductGridItemSize.large
                                        : ProductGridItemSize.medium;
                                return Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: ProductGridItem(
                                    size: size,
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
                            [
                              SizedBox(
                                height: Get.context!.mediaQuery.padding.bottom +
                                    70 +
                                    52,
                              )
                            ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
