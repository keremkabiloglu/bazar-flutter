import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'util/routes.dart';
import 'util/services/translation_service/translation_service.dart';
import 'util/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.initial,
        getPages: AppPages.pages,
        theme: AppTheme.light,
        translations: Get.find<TranslationService>(),
        locale: Get.find<TranslationService>().currentLocale,
        fallbackLocale: Get.find<TranslationService>().currentLocale,
        supportedLocales: Get.find<TranslationService>().supportedLocales,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
      ),
    );
  }
}
