import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountProductsScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void onInit() {
    tabController = TabController(
      length: 4,
      vsync: this,
    );
    super.onInit();
  }
}
