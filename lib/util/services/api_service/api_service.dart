import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;

import '../../environment/environment.dart';
import 'model/api_error.dart';
import 'model/api_request.dart';

class ApiService extends GetxService {
  late final Dio _dioClient;

  static const Duration defaultConnectTimeout = Duration(seconds: 10);
  static const Duration defaultReceiveTimeout = Duration(seconds: 8);

  final RxList<ApiRequest> _requests = <ApiRequest>[].obs;

  bool _loaderShowing = false;
  BuildContext? _loaderContext;

  @override
  void onInit() {
    _dioClient = Dio(
      BaseOptions(
        baseUrl: Environment.config.host,
        connectTimeout: defaultConnectTimeout,
        receiveTimeout: defaultReceiveTimeout,
      ),
    );
    _addRequestsListener();
    super.onInit();
  }

  void addInterceptor(InterceptorsWrapper interceptorsWrapper) {
    _dioClient.interceptors.add(interceptorsWrapper);
  }

  Future<Response> makeRequest(ApiRequest request) async {
    _requests.add(request);
    _dioClient.options.receiveTimeout = request.timeout;
    try {
      switch (request.type) {
        case RequestType.get:
          return await _dioClient.get(
            request.path,
            queryParameters: request.queryParameters,
            options: request.options,
            cancelToken: request.cancelToken,
            onReceiveProgress: request.onReceiveProgress,
          );
        case RequestType.post:
          return await _dioClient.post(
            request.path,
            data: request.data,
            queryParameters: request.queryParameters,
            options: request.options,
            cancelToken: request.cancelToken,
            onReceiveProgress: request.onReceiveProgress,
          );
        case RequestType.put:
          return await _dioClient.put(
            request.path,
            data: request.data,
            queryParameters: request.queryParameters,
            options: request.options,
            cancelToken: request.cancelToken,
            onReceiveProgress: request.onReceiveProgress,
          );
        case RequestType.patch:
          return await _dioClient.patch(
            request.path,
            data: request.data,
            queryParameters: request.queryParameters,
            options: request.options,
            cancelToken: request.cancelToken,
            onReceiveProgress: request.onReceiveProgress,
          );
        case RequestType.delete:
          return await _dioClient.delete(
            request.path,
            data: request.data,
            queryParameters: request.queryParameters,
            options: request.options,
            cancelToken: request.cancelToken,
          );
        case RequestType.download:
          return await _dioClient.download(
            request.path,
            request.data,
            queryParameters: request.queryParameters,
            options: request.options,
            cancelToken: request.cancelToken,
            onReceiveProgress: request.onReceiveProgress,
            deleteOnError: request.deleteOnError ?? true,
            lengthHeader: request.lengthHeader ?? Headers.contentLengthHeader,
          );
      }
    } on DioException catch (e) {
      final response = e.response ??
          Response(
            requestOptions: RequestOptions(
              path: request.path,
              method: request.type.name,
              data: request.data,
              queryParameters: request.queryParameters,
            ),
          );
      if (request.showError) _showApiError(response);
      return response;
    } catch (e) {
      final response = Response(
        requestOptions: RequestOptions(
          path: request.path,
          method: request.type.name,
          data: request.data,
          queryParameters: request.queryParameters,
        ),
        statusCode: 500,
      );
      if (request.showError) _showApiError(response);
      return response;
    } finally {
      _dioClient.options.connectTimeout = defaultConnectTimeout;
      _dioClient.options.receiveTimeout = defaultReceiveTimeout;
      _requests.remove(request);
    }
  }

  void _addRequestsListener() {
    _requests.listen((request) {
      final showLoaderRequests =
          _requests.where((element) => element.showLoader);
      if (showLoaderRequests.isNotEmpty) {
        _showLoader();
      } else {
        _hideLoader();
      }
    });
  }

  void _showLoader() {
    final context = Get.context;
    if (!_loaderShowing && context != null && context.mounted) {
      showDialog(
        context: context,
        builder: (builder) {
          _loaderContext = builder;
          return PopScope(
            canPop: false,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const CupertinoActivityIndicator(),
              ),
            ),
          );
        },
      );
      _loaderShowing = true;
    }
  }

  void _hideLoader() {
    if (_loaderShowing) {
      Navigator.of(_loaderContext!).pop();
      _loaderShowing = false;
    }
  }

  void _showApiError(Response response) {
    if (Get.context != null && Get.context!.mounted) {
      final apiError = ApiError.fromJson(response.data ?? {});
      Get.snackbar(
        apiError.error?.tr ?? 'AN_ERROR_OCCURRED'.tr,
        apiError.messages.map((e) => e.tr).join('\n'),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        margin: const EdgeInsets.all(16),
        borderRadius: 12,
        duration: null,
        dismissDirection: DismissDirection.up,
      );
    }
  }
}

extension ResponseExtension on Response {
  bool get isOk => (statusCode ?? 0) >= 200 && (statusCode ?? 0) < 300;
}
