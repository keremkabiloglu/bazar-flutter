import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: Get.put(HomeScreenController()),
      autoRemove: false,
      global: false,
      builder: (controller) {
        return const Placeholder();
      },
    );
  }
}
