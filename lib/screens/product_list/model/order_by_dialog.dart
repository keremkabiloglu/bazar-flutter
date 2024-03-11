import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

class OrderByDialog extends StatelessWidget {
  const OrderByDialog({super.key});

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
              title: Text('DEFAULT'.tr),
              groupValue: 1,
              onChanged: (val) {},
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
              value: 2,
              title: Text('PRICE_LOW_TO_HIGH'.tr),
              groupValue: 1,
              onChanged: (val) {},
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
              value: 3,
              title: Text('PRICE_LOW_TO_HIGH'.tr),
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
