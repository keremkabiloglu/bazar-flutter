import 'package:bazar_flutter/screens/product/view/components/product_questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/product_screen_controller.dart';

class ProductTabs extends StatelessWidget {
  const ProductTabs({super.key, required this.controller});

  final ProductScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          isScrollable: true,
          controller: controller.tabController,
          tabs: [
            Text(
              'QUESTIONS'.tr,
            ),
            Text(
              'SELLER_DETAILS'.tr,
            ),
            Text(
              'INSTALLMENT_OPTINOS'.tr,
            ),
          ],
        ),
        const Divider(
          height: 1,
          thickness: 1,
        ),
        Obx(
          () => AnimatedSize(
            alignment: Alignment.topCenter,
            duration: const Duration(milliseconds: 300),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: double.infinity,
              height: context.height *
                  (controller.isTabViewExpanded.value ? 0.6 : 0.3),
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  ProductQuestions(
                    controller: controller,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ),
        const Divider(
          height: 1,
          thickness: 1,
        ),
        Obx(
          () => TextButton(
            key: controller.expandButtonKey,
            onPressed: controller.onPressTabViewExpand,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  controller.isTabViewExpanded.value
                      ? 'COLLAPSE'.tr
                      : 'EXPAND'.tr,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 8,
                ),
                Icon(
                  controller.isTabViewExpanded.value
                      ? CupertinoIcons.chevron_up
                      : CupertinoIcons.chevron_down,
                ),
              ],
            ),
          ),
        ),
        const Divider(
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }
}
