import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/app_app_bar.dart';
import '../components/app_bottom_navigation_bar.dart';
import '../controller/main_screen_controller.dart';

class MainScreen extends GetView<MainScreenController> {
  static const routeName = '/';
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: const AppAppBar(),
      body: PageView.builder(
        controller: controller.pageController,
        itemBuilder: (context, index) => controller.screens[index],
      ),
      bottomSheet: AppBottomNavigationBar(
        controller: controller,
      ),
    );
  }
}
