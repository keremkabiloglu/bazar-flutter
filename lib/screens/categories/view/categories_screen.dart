import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import '../controller/categories_screen_controller.dart';
import 'components/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CategoriesScreenController(),
      autoRemove: false,
      global: false,
      builder: (controller) {
        return SingleChildScrollView(
          child: Wrap(
            children: [
              for (int i = 0; i < 100; i++)
                CategoryGridItem(
                  size: i % 3 == 0
                      ? CategoryGridItemSize.full
                      : CategoryGridItemSize.half,
                ),
              SizedBox(
                width: double.infinity,
                height: Get.context!.mediaQuery.padding.bottom + 78,
              ),
            ],
          ),
        );
      },
    );
  }
}
