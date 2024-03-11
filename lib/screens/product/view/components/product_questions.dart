import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import '../../controller/product_screen_controller.dart';

class ProductQuestions extends StatelessWidget {
  const ProductQuestions({super.key, required this.controller});

  final ProductScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView(
        physics: controller.isTabViewExpanded.value
            ? const NeverScrollableScrollPhysics()
            : null,
        padding: const EdgeInsets.all(8),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 4, left: 4),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/19484515?v=4',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextField(
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: 'ASK_SOMETHING'.tr,
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8, top: 4),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(4),
                    ),
                    onPressed: () {},
                    child: Text('ASK'.tr),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: const Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 4, left: 4),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/19484515?v=4',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '@johndoe',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Text(
                                  '2 gün önce',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4, bottom: 4),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet. Sed vitae nisi eget nunc aliquam aliquet.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 24, bottom: 8),
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/19484515?v=4',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      '@johndoe',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '2 gün önce',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc aliquam aliquet.',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
