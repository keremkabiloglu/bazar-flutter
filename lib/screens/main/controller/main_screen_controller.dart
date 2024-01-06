import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../home/view/home_screen.dart';

class MainScreenController extends GetxController {
  final _selectedIndex = 0.obs;
  final PageController pageController = PageController();

  final List<Widget> _screens = const [
    HomeScreen(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  int get selectedIndex => _selectedIndex.value;
  List<Widget> get screens => _screens;

  void onBottomNavigationBarItemPressed(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.fastOutSlowIn,
    );
    _selectedIndex.value = index;
  }
}
