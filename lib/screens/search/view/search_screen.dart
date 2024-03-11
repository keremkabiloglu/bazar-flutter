import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

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
