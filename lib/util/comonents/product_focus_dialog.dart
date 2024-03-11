import 'dart:ui';

import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/product_state.dart';

class ProductFocusDialog extends StatefulWidget {
  const ProductFocusDialog({super.key, required this.heroTag});

  final Object heroTag;

  @override
  State<ProductFocusDialog> createState() => _ProductFocusDialogState();
}

class _ProductFocusDialogState extends State<ProductFocusDialog> {
  late final PageController _pageController;

  final _photos = [
    'https://specials-images.forbesimg.com/imageserve/5e19e7a3da6d380006295c72//960x0.jpg?fit=scale',
    'https://images.unsplash.com/photo-1611930022073-b7a4ba5fcccd?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdCUyMHBob3RvZ3JhcGh5fGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1630688231126-dd36840fce51?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZHVjdCUyMHBob3RvZ3JhcGh5fGVufDB8fDB8fHww',
  ];

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 1,
    );
    _pageController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 3,
        sigmaY: 3,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.heroTag,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: context.width * 0.7,
                  height: (context.width * 0.7) * 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      PageView.builder(
                        physics: const ClampingScrollPhysics(),
                        controller: _pageController,
                        itemCount: _photos.length,
                        itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(_photos[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        top: 8,
                        left: 8,
                        right: 8,
                        bottom: 8,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                buildContainer(ProductState.brandNew.name
                                    .toUpperCase()
                                    .tr),
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
                                  ).format(5555)} ₺',
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 8,
                left: 8,
                bottom: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: _photos
                            .map(
                              (e) => Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: (_pageController.hasClients
                                                    ? (_pageController.page ??
                                                        0)
                                                    : 0)
                                                .round() ==
                                            _photos.indexOf(e)
                                        ? Colors.white
                                        : Colors.white.withOpacity(0.5),
                                    radius: 4,
                                  ),
                                  if (_photos.last != e)
                                    const SizedBox(width: 8),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: ((context.width * 0.6) / 3) - 16,
                  height: ((context.width * 0.6) / 3) - 16,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
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
                    color: Color(0xff242424),
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
                    color: Color(0xff242424),
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
                    color: Color(0xff242424),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
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
        child: Material(
          color: Colors.transparent,
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ),
      );
}
