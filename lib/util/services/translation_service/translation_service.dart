import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'languages/i_language.dart';
import 'languages/turkish.dart';

class TranslationService extends GetxService implements Translations {
  Locale get currentLocale => Get.locale ?? Turkish().locale;

  List<Locale> supportedLocales = [Turkish().locale];

  @override
  Map<String, Map<String, String>> get keys => {
        Turkish().locale.languageCode: Turkish().keys,
      };

  void changeLanguage(ILanguage language) {
    Get.updateLocale(language.locale);
  }
}
