import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../search/view/search_screen.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    super.key,
    this.onSearchSubmitted,
    this.onSearchChanged,
  });

  final void Function(String)? onSearchSubmitted;
  final void Function(String)? onSearchChanged;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          children: [
            if (!Navigator.canPop(Get.context!))
              const Expanded(
                child: Text('BA\nZAR'),
              ),
            Expanded(
              flex: 7,
              child: TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                readOnly: onSearchChanged == null && onSearchSubmitted == null,
                onSubmitted: onSearchSubmitted,
                onChanged: onSearchChanged,
                onTap: (onSearchChanged == null && onSearchSubmitted == null)
                    ? () => Get.toNamed(SearchScreen.routeName)
                    : null,
                decoration: InputDecoration(
                  hintText: 'APPBAR_SEARCH_HINT'.tr,
                  suffixIcon: const Icon(CupertinoIcons.search),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(58);
}
