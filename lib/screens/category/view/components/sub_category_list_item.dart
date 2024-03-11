import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

class SubCategoryListItem extends StatelessWidget {
  const SubCategoryListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: ListTile(
        onTap: () {
          Get.toNamed('/product-list/1');
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        visualDensity: VisualDensity.compact,
        leading: Container(
          width: 48,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: const Color(0xFFE7E7E8),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFFE7E7E8),
              width: 1.5,
            ),
          ),
          child: Image.network(
            'https://assets.stickpng.com/thumbs/580b57fbd9996e24bc43bef3.png',
          ),
        ),
        title: const Text(
          'Elbise',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF242424),
          ),
        ),
        trailing: const Text(
          '12 Ürün',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 12,
            color: Color(0xFFA0A0A0),
          ),
        ),
      ),
    );
  }
}
