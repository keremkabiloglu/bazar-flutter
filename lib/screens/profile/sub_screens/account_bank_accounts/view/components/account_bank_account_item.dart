import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountBankAccountItem extends StatelessWidget {
  const AccountBankAccountItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          const Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'İş Bankası Hesabım',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 12),
                Text.rich(
                  TextSpan(
                    text: 'IBAN: ',
                    children: [
                      TextSpan(
                        text: 'TR12 0006 4000 0011 1000 0000 00',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF242424),
                        ),
                      ),
                    ],
                  ),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SvgPicture.network(
              'https://upload.wikimedia.org/wikipedia/commons/2/24/Türkiye_İş_Bankası_logo.svg',
            ),
          ),
        ],
      ),
    );
  }
}
