import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app.dart';
import 'util/environment/environment.dart';
import 'util/services/api_service/api_service.dart';
import 'util/services/app_service/app_service.dart';
import 'util/services/storage_service/storage_service.dart';
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
    StorageService(),
    permanent: true,
  );
  Get.put(
    ApiService(),
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
