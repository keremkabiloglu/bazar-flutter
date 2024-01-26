import 'package:flutter/cupertino.dart';

import '../../controller/product_screen_controller.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key, required this.controller});

  final ProductScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(
          width: .8,
          color: const Color(0xff242424).withOpacity(0.2),
        ),
        bottom: BorderSide(
          width: .8,
          color: const Color(0xff242424).withOpacity(0.2),
        ),
      )),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildAttribute('RENK', 'Siyah'),
            _buildAttribute('HAFIZA', '128 GB'),
            _buildAttribute('RAM', '8 GB'),
          ],
        ),
      ),
    );
  }

  Widget _buildAttribute(String title, String value) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.2,
          color: const Color(0xffE7E7E8),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: const EdgeInsets.only(right: 12),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$title:',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
