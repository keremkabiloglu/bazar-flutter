import 'package:flutter/material.dart';

import '../../controller/product_screen_controller.dart';

class ProductNameSeller extends StatelessWidget {
  const ProductNameSeller({super.key, required this.controller});

  final ProductScreenController controller;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              'Bershka Men\'s Shirt with Long Sleeve All Over Print in Slim Fit',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 32,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '@username',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
