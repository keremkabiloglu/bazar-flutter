import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/account_bank_account_item.dart';

class AccountBankAccountsScreen extends StatelessWidget {
  static const routeName = '/account_bank_accounts';

  const AccountBankAccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        title: Text('MY_BANK_ACCOUNTS'.tr),
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
                AccountBankAccountItem(),
                Divider(),
                AccountBankAccountItem(),
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
