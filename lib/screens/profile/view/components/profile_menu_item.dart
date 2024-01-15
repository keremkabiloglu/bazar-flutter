import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key,
    required this.title,
    required this.iconAsset,
    required this.onPressed,
    this.color,
  });

  final String title;
  final String iconAsset;
  final Color? color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: color ?? const Color(0xFF242424),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      shape: LinearBorder.bottom(
        side: BorderSide(
          color: const Color(0xFF242424).withOpacity(.25),
        ),
      ),
      trailing: SvgPicture.asset(
        iconAsset,
        colorFilter: color != null
            ? ColorFilter.mode(
                color!,
                BlendMode.srcIn,
              )
            : null,
      ),
    );
  }
}
