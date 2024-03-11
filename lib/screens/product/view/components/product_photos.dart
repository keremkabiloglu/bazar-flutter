import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import '../../controller/product_screen_controller.dart';

class ProductPhotos extends StatelessWidget {
  const ProductPhotos({super.key, required this.controller});

  final ProductScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      width: double.infinity,
      height: context.height * 0.5,
      child: PageView.builder(
        controller: controller.photoPageController,
        itemCount: controller.photos.length,
        itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            margin: const EdgeInsets.only(right: 12, bottom: 4, top: 8),
            child: Image.network(
              controller.photos[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
