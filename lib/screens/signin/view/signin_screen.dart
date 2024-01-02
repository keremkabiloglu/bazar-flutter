import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/environment/environment.dart';
import '../../../util/services/api_service/api_service.dart';

class SigninScreen extends StatelessWidget {
  static const String routeName = '/signin';

  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<ApiService>().addInterceptor(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          Get.log('[ApiService]: ${options.method} ${options.path}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          Get.log('[ApiService]: ${response.statusCode}');
          return handler.next(response);
        },
        onError: (error, handler) {
          Get.log('[ApiService]: ${error.response?.statusCode}');
          return handler.next(error);
        },
      ),
    );
    Get.find<ApiService>()
        .post(
      path: '${Environment.config.userPath}/login',
    )
        .then((value) {
      print(value);
    });
    return const Placeholder();
  }
}
