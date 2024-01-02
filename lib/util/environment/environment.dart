import 'package:get/get.dart';

import 'config/development_config.dart';
import 'config/i_config.dart';

class Environment {
  static late final IConfig config;

  static IConfig initConfig() {
    var hasEnvironment = const bool.hasEnvironment('envrionment');
    if (hasEnvironment) {
      var environment = const String.fromEnvironment('envrionment');
      switch (environment) {
        case 'development':
          config = DevelopmentConfig();
          break;
        default:
          config = DevelopmentConfig();
      }
    } else {
      config = DevelopmentConfig();
    }
    Get.log('[Environment]: ${config.runtimeType} initialized.');
    return config;
  }
}
