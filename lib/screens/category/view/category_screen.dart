import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import '../../main/components/app_app_bar.dart';
import '../controller/category_screen_controller.dart';
import 'components/category_list_item.dart';
import 'components/sub_category_list_item.dart';

class CategoryScreen extends GetView<CategoryScreenController> {
  static const routeName = '/category/:categoryId';

  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Obx(
              () => Row(
                children: [
                  for (int i = 0; i < 10; i++)
                    CategoryListItem(
                      isSelected: controller.selectedCategory.value == i,
                      onTap: controller.onCategoryPressed,
                      index: i,
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => const SubCategoryListItem(),
            ),
          ),
        ],
      ),
    );
  }
}
