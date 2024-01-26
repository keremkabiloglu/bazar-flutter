import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProductScreenBottomNavigationBar extends StatelessWidget {
  const ProductScreenBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8).add(
        EdgeInsets.only(
          bottom: context.mediaQueryPadding.bottom,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromHeight(52),
              ),
              onPressed: () {},
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'BUY_@PRICE'.trParams(
                    {
                      'price':
                          '${NumberFormat.currency(locale: 'tr', symbol: '').format(1000000)} ₺',
                    },
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                fixedSize: const Size.fromHeight(52),
              ),
              onPressed: () {},
              child: Text(
                'GIVE_OFFER'.tr,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xff242424),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
