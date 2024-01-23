import 'dart:math';
import 'dart:ui';

import 'package:bazar_flutter/util/comonents/hero_dialog_route.dart';
import 'package:flutter/cupertino.dart';
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
    this.waitingApproval = false,
    this.isPassive = false,
    this.isDisapproved = false,
    this.isFavorite = false,
  });

  final ProductGridItemSize size;
  final int adId;
  final ProductState productState;
  final String imageUrl;
  final String adTitle;
  final double price;
  final bool waitingApproval;
  final bool isPassive;
  final bool isDisapproved;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    var randomNumber = Random().nextInt(1000);
    return Column(
      children: [
        MaterialButton(
          onPressed: () {},
          onLongPress: () {
            Navigator.push(
              context,
              HeroDialogRoute(
                builder: (context) => BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Hero(
                            tag: '$randomNumber',
                            child: Container(
                              width: context.width * 0.6,
                              height: (context.width * 0.6) * 1.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    imageUrl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 8,
                            left: 8,
                            bottom: 8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 4,
                                      ),
                                      SizedBox(width: 8),
                                      CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        radius: 4,
                                      ),
                                      SizedBox(width: 8),
                                      CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        radius: 4,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: ((context.width * 0.6) / 3) - 16,
                              height: ((context.width * 0.6) / 3) - 16,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.2),
                                    spreadRadius: 1.5,
                                    blurRadius: 3,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.favorite_border,
                                size: 32,
                              ),
                            ),
                            Container(
                              width: ((context.width * 0.6) / 3) - 16,
                              height: ((context.width * 0.6) / 3) - 16,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.2),
                                    spreadRadius: 1.5,
                                    blurRadius: 3,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: const Icon(
                                CupertinoIcons.bubble_left,
                                size: 32,
                              ),
                            ),
                            Container(
                              width: ((context.width * 0.6) / 3) - 16,
                              height: ((context.width * 0.6) / 3) - 16,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.2),
                                    spreadRadius: 1.5,
                                    blurRadius: 3,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: const Icon(
                                CupertinoIcons.share,
                                size: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          padding: EdgeInsets.zero,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          minWidth: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Hero(
            tag: '$randomNumber',
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
                      if (waitingApproval)
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12,
                          child: Icon(
                            CupertinoIcons.clock,
                            color: Colors.orange,
                            size: 16,
                          ),
                        ),
                      if (isPassive)
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12,
                          child: Icon(
                            CupertinoIcons.pause_solid,
                            color: Colors.black,
                            size: 16,
                          ),
                        ),
                      if (isDisapproved)
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12,
                          child: Icon(
                            CupertinoIcons.xmark_circle_fill,
                            color: Colors.red,
                            size: 16,
                          ),
                        ),
                      if (isFavorite)
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12,
                          child: Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.red,
                            size: 16,
                          ),
                        ),
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
