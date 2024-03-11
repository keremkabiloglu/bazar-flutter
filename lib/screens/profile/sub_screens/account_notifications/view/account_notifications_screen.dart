import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import 'components/account_notification_item.dart';

class AccountNotificationsScreen extends StatelessWidget {
  static const String routeName = '/account_notifications';
  const AccountNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        title: Text('MY_NOTIFICATIONS'.tr),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                AccountNotificationItem(),
                Divider(),
                AccountNotificationItem(),
                Divider(),
                AccountNotificationItem(),
                Divider(),
                AccountNotificationItem(),
                Divider(),
                AccountNotificationItem(),
                Divider(),
                AccountNotificationItem(),
                Divider(),
                AccountNotificationItem(),
                Divider(),
                AccountNotificationItem(),
                Divider(),
                AccountNotificationItem(),
                Divider(),
                AccountNotificationItem(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: context.mediaQueryPadding.bottom),
          ),
        ],
      ),
    );
  }
}
