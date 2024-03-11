import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import '../controller/main_screen_controller.dart';

class AppBottomNavigationBar extends StatelessWidget {
  AppBottomNavigationBar({super.key, required this.controller});

  final MainScreenController controller;
  final Color unselectedItemColor = const Color(0xFF868687);
  final Color selectedItemColor = const Color(0xFFFFFFFF);

  late final TextStyle selectedLabelStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: selectedItemColor,
    fontSize: 12,
  );

  late final TextStyle unselectedLabelStyle = TextStyle(
    color: unselectedItemColor,
    fontSize: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 8,
        right: 8,
        bottom: 8 + Get.context!.mediaQueryPadding.bottom,
      ),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFF242424),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Obx(
        () => Row(
          children: [
            _buildBottomNavigationBarItem(
              iconPath: 'assets/icons/home.svg',
              label: 'HOME'.tr,
              index: 0,
              isSelected: controller.selectedIndex == 0,
            ),
            _buildBottomNavigationBarItem(
              iconPath: 'assets/icons/categories.svg',
              label: 'CATEGORIES'.tr,
              index: 1,
              isSelected: controller.selectedIndex == 1,
            ),
            _buildBottomNavigationBarItem(
              iconPath: 'assets/icons/messages.svg',
              label: 'MESSAGES'.tr,
              index: 2,
              isSelected: controller.selectedIndex == 2,
            ),
            _buildBottomNavigationBarItem(
              iconPath: 'assets/icons/account.svg',
              label: 'MY_ACCOUNT'.tr,
              index: 3,
              isSelected: controller.selectedIndex == 3,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBarItem({
    required String iconPath,
    required String label,
    required bool isSelected,
    required int index,
  }) {
    return Expanded(
      child: MaterialButton(
        onPressed: () => controller.onBottomNavigationBarItemPressed(index),
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.all(isSelected ? 0 : 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: SvgPicture.asset(
                      iconPath,
                      colorFilter: ColorFilter.mode(
                        isSelected ? selectedItemColor : unselectedItemColor,
                        BlendMode.srcIn,
                      ),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        label,
                        style: isSelected
                            ? selectedLabelStyle
                            : unselectedLabelStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
