import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../util/comonents/product_grid_item.dart';
import '../../../../util/model/product_state.dart';

class ProductOtherProducts extends StatelessWidget {
  const ProductOtherProducts({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4, left: 8, right: 8, top: 8),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: context.height * 0.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width / 2.5,
              height: double.infinity,
              margin: const EdgeInsets.only(right: 8),
              child: ProductGridItem(
                size: ProductGridItemSize.medium,
                adId: Random().nextInt(100),
                productState: ProductState.littleUsed,
                imageUrl: 'https://picsum.photos/200',
                adTitle: 'Deneme',
                price: 100,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
