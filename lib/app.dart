import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import 'screens/main/view/main_screen.dart';
import 'util/routes.dart';
import 'util/services/translation_service/translation_service.dart';
import 'util/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.focusScope?.unfocus();
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: MainScreen.routeName,
        getPages: AppPages.pages,
        theme: AppTheme.light,
        translations: Get.find<TranslationService>(),
        locale: Get.find<TranslationService>().currentLocale,
        fallbackLocale: Get.find<TranslationService>().currentLocale,
        supportedLocales: Get.find<TranslationService>().supportedLocales,
      ),
    );
  }
}
