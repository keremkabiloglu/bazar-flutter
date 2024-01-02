import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'util/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      getPages: AppPages.pages,
    );
  }
}
