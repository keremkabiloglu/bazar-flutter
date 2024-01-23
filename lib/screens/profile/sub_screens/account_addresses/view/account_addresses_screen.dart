import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/account_addresses_screen_controller.dart';
import 'components/account_address_item.dart';

class AccountAddressesScreen extends GetView<AccountAddressesScreenController> {
  static const String routeName = '/account_addresses';
  const AccountAddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        title: Text('MY_ADDRESSES'.tr),
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
                AccountAddressItem(),
                Divider(),
                AccountAddressItem(),
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
