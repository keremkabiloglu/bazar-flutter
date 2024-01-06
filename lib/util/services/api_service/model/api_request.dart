import 'package:dio/dio.dart';

import '../api_service.dart';

enum RequestType {
  get,
  post,
  put,
  patch,
  delete,
  download,
}

class ApiRequest {
  final String path;
  final dynamic savePath;
  final RequestType type;
  final Object? data;
  final Map<String, dynamic>? queryParameters;
  final Options? options;
  final CancelToken? cancelToken;
  final void Function(int, int)? onReceiveProgress;
  final bool? deleteOnError;
  final String? lengthHeader;
  final bool showLoader;
  final bool showError;
  final Duration timeout;

  ApiRequest({
    required this.path,
    required this.type,
    required this.showLoader,
    required this.showError,
    this.data,
    this.queryParameters,
    this.options,
    this.cancelToken,
    this.onReceiveProgress,
    this.deleteOnError,
    this.lengthHeader,
    this.savePath,
    this.timeout = ApiService.defaultReceiveTimeout,
  });
}
