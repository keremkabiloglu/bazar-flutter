import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app.dart';
import 'util/environment/environment.dart';
import 'util/services/api_service/api_service.dart';

void initialize() {
  Environment.initConfig();
  Get.put(
    ApiService(),
    permanent: true,
  );
}

void main() {
  initialize();
  runApp(
    const App(),
  );
}
