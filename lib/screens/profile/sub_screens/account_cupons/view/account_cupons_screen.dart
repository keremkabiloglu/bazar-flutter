import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controller/account_cupons_screen_controller.dart';
import 'components/account_cupon_item.dart';

class AccountCuponsScreen extends GetView<AccountCuponsScreenController> {
  static const String routeName = '/account_cupons';

  const AccountCuponsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        title: Text('MY_CUPONS'.tr),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.add_circled),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                AccountCuponItem(),
                Divider(),
                AccountCuponItem(),
                Divider(),
                AccountCuponItem(),
                Divider(),
                AccountCuponItem(),
                Divider(),
                AccountCuponItem(),
                Divider(),
                AccountCuponItem(),
                Divider(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: context.mediaQueryPadding.bottom,
            ),
          ),
        ],
      ),
    );
  }
}
