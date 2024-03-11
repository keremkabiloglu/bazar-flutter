import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key,
    required this.title,
    required this.iconAsset,
    required this.onPressed,
    this.color,
    this.iconColor,
    this.badgeCount,
  });

  final String title;
  final String iconAsset;
  final Color? color;
  final Color? iconColor;
  final VoidCallback onPressed;
  final int? badgeCount;

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
      trailing: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset(
            iconAsset,
            colorFilter: color != null || iconColor != null
                ? ColorFilter.mode(
                    color ?? iconColor!,
                    BlendMode.srcIn,
                  )
                : null,
          ),
          if (badgeCount != null && badgeCount! > 0)
            Positioned(
              top: -5,
              right: -5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  badgeCount! > 99 ? '99+' : badgeCount.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
