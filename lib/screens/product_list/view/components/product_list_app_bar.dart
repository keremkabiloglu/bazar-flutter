import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../search/view/search_screen.dart';
import '../../controller/product_list_screen_controller.dart';

class ProductListAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProductListAppBar({
    super.key,
    required this.controller,
  });

  final ProductListScreenController controller;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      titleSpacing: 0,
      title: Row(
        children: [
          const Expanded(
            child: Text(
              'Elbise',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Get.toNamed(SearchScreen.routeName);
                  },
                  icon: const Icon(CupertinoIcons.search),
                ),
                IconButton(
                  onPressed: controller.onPressedOrderBy,
                  icon: SvgPicture.asset('assets/icons/order_by.svg'),
                ),
                IconButton(
                  onPressed: controller.onPressedOpenFilterSideBar,
                  icon: SvgPicture.asset('assets/icons/filter.svg'),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: const [SizedBox()],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(58);
}
