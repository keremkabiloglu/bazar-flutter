import 'package:flutter/material.dart';

class AccountAddressItem extends StatelessWidget {
  const AccountAddressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: 'Ev Adresim',
                children: [
                  TextSpan(
                    text: ' (Varsayılan)',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF242424),
                    ),
                  ),
                ],
              ),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF242424),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Altın Damla Sokak, No: 19 Kat: 5',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF242424),
              ),
            ),
            SizedBox(height: 8),
            Text(
              '+90 531 831 7326',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF242424),
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'İstanbul',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF242424),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Sarıyer',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF242424),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'İstinye Mahallesi',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF242424),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    '34460',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF242424),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
