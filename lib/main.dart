import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'util/environment/environment.dart';
import 'util/services/app_service/app_service.dart';
import 'util/services/translation_service/translation_service.dart';
import 'util/services/user_service/user_service.dart';

Future<void> initialize() async {
  Environment.initConfig();
  Get.put(
    AppService(),
    permanent: true,
  );
  Get.put(
    TranslationService(),
    permanent: true,
  );
  Get.put(
    StorageService(
      StorageProvider.flutterSecureStorage,
    ),
    permanent: true,
  );
  Get.put(
    ApiService(
      provider: ApiProvider.dio,
      timeout: 5.seconds,
      baseUrl: Environment.config.host,
    ),
    permanent: true,
  );
  await Get.put(
    UserService(),
    permanent: true,
  ).initUser();
}

void main() {
  initialize().then((_) {
    runApp(
      const App(),
    );
  });
}
