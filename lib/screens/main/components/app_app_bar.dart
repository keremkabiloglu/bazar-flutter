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
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: Row(
          children: [
            Expanded(
              child: Navigator.canPop(context)
                  ? const BackButton()
                  : const Text('BA\nZAR'),
            ),
            Expanded(
              flex: Navigator.canPop(context) ? 8 : 6,
              child: TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                readOnly: !Navigator.canPop(context),
                onSubmitted: onSearchSubmitted,
                onChanged: onSearchChanged,
                onTap: Navigator.canPop(context)
                    ? null
                    : () => Get.toNamed(SearchScreen.routeName),
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
