import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabControleller;

  final tabViewScrollControllers = <ScrollController>[];
  final showTabBar = Rx<bool>(true);

  final demoProducts = [
    'Demo Product 1',
    'Demo Product 2',
    'Demo Product 3',
    'Demo Product 4',
    'Demo Product 5',
    'Demo Product 6',
    'Demo Product 7',
    'Demo Product 8',
    'Demo Product 9',
    'Demo Product 10',
  ];

  @override
  void onInit() {
    tabControleller = TabController(
      length: 4,
      vsync: this,
    );
    for (var i = 0; i < tabControleller.length; i++) {
      tabViewScrollControllers.add(ScrollController());
      _addHideListener(tabViewScrollControllers[i]);
    }
    super.onInit();
  }

  void onTabPressed(int index) {}

  void _addHideListener(ScrollController controller) {
    controller.addListener(() {
      if (controller.position.userScrollDirection == ScrollDirection.forward) {
        showTabBar.value = true;
      } else {
        showTabBar.value = false;
      }
    });
  }
}
