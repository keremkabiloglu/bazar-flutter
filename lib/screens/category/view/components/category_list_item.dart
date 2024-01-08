import 'package:flutter/material.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    super.key,
    required this.index,
    required this.isSelected,
    this.onTap,
  });

  final int index;
  final bool isSelected;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onTap?.call(index),
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      padding: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFEFEDFC) : const Color(0xFFE7E7E8),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color:
                isSelected ? const Color(0xFFEFEDFC) : const Color(0xFFE7E7E8),
            width: 1.5,
          ),
        ),
        child: Text(
          'Giyim',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color:
                isSelected ? const Color(0xFF242424) : const Color(0xFFA0A0A0),
          ),
        ),
      ),
    );
  }
}
