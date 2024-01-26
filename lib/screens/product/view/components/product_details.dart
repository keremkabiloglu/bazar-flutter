import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../controller/product_screen_controller.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.controller});

  final ProductScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          width: .8,
          color: const Color(0xff242424).withOpacity(0.2),
        ),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              'PRODUCT_DETAILS'.tr,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'DESCRIPTION'.tr,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const Text(
            'These are the Mom Jeans you\'ve been looking for. Let loose with this modern interpretation of a classic \'90s style, featuring a flattering high rise and stacked, tapered leg. These jeans are designed to be worn as a relaxed, loose style. Waist-emphasizing high rise  Relaxed fit for a vintage-inspired look Tapered leg for tailored style Sustainably made with TENCEL fabric',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
