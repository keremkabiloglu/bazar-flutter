import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

enum CategoryGridItemSize {
  half,
  full,
}

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({super.key, required this.size});

  final CategoryGridItemSize size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: () {
          Get.toNamed('/category/1');
        },
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        minWidth: 0,
        child: Container(
          width:
              context.width / (size == CategoryGridItemSize.half ? 2 : 1) - 16,
          height: context.height * .17,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 2,
                offset: const Offset(0, 0),
              ),
            ],
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: const NetworkImage(
                'https://cdn.thewirecutter.com/wp-content/media/2023/09/noise-cancelling-headphone-2048px-0862-2x1-1.jpg?auto=webp&quality=75&crop=1.91:1&width=1200',
              ),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1),
                BlendMode.srcOver,
              ),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 2,
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Küçük Ev Aletleri',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: const Offset(0, 0),
                                color: Colors.black.withOpacity(0.4),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                        ),
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
  }
}
