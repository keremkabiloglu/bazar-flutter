import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main/components/app_app_bar.dart';
import '../controller/search_screen_controller.dart';

class SearchScreen extends GetView<SearchScreenController> {
  static const routeName = '/search';
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        onSearchSubmitted: controller.onSearchSubmitted,
        onSearchChanged: controller.onSearchChanged,
      ),
    );
  }
}
