import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../model/product_state.dart';

enum ProductGridItemSize {
  small,
  medium,
  large,
}

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({
    super.key,
    required this.size,
    required this.adId,
    required this.productState,
    required this.imageUrl,
    required this.adTitle,
    required this.price,
  });

  final ProductGridItemSize size;
  final int adId;
  final ProductState productState;
  final String imageUrl;
  final String adTitle;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          minWidth: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: height(context),
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1.5,
                  blurRadius: 3,
                  offset: const Offset(0, 0),
                ),
              ],
              color: Colors.grey[200],
              image: DecorationImage(
                image: NetworkImage(
                  imageUrl,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    buildContainer(productState.name.toUpperCase().tr),
                    const Spacer(),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    const Spacer(),
                    buildContainer(
                      '${NumberFormat.currency(
                        locale: 'tr',
                        symbol: '',
                      ).format(price)} ₺',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, right: 8),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  adTitle,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  double height(BuildContext context) {
    switch (size) {
      case ProductGridItemSize.small:
        return context.height * 0.2;
      case ProductGridItemSize.medium:
        return context.height * 0.25;
      case ProductGridItemSize.large:
        return context.height * 0.3;
    }
  }

  Widget buildContainer(String label) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFF3B3B3B),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
      );
}
