import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountFavoritesOrderByDialog extends StatelessWidget {
  const AccountFavoritesOrderByDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  'ORDER_BY'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            const Divider(),
            RadioListTile(
              value: 1,
              title: Text('NEW_TO_OLD'.tr),
              groupValue: 1,
              onChanged: (val) {},
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
              value: 2,
              title: Text('OLD_TO_NEW'.tr),
              groupValue: 1,
              onChanged: (val) {},
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
              value: 3,
              title: Text('PRICE_HIGH_TO_LOW'.tr),
              groupValue: 1,
              onChanged: (val) {},
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
              value: 4,
              title: Text('PRICE_LOW_TO_HIGH'.tr),
              groupValue: 1,
              onChanged: (val) {},
              controlAffinity: ListTileControlAffinity.trailing,
            ),
          ],
        ),
      ),
    );
  }
}
