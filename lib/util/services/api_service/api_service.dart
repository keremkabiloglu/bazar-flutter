import 'package:dio/dio.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../environment/environment.dart';

class ApiService extends GetxService {
  late final Dio _dioClient;

  @override
  void onInit() {
    _dioClient = Dio(
      BaseOptions(
        baseUrl: Environment.config.host,
        connectTimeout: 10.seconds,
        receiveTimeout: 8.seconds,
      ),
    );
    super.onInit();
  }

  void addInterceptor(InterceptorsWrapper interceptorsWrapper) {
    _dioClient.interceptors.add(interceptorsWrapper);
  }

  Future<Response> get({
    required String path,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      return await _dioClient.get(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioException catch (e) {
      return e.response ??
          Response(
            statusCode: 500,
            requestOptions: RequestOptions(),
          );
    } catch (e) {
      return Response(
        statusCode: 500,
        requestOptions: RequestOptions(),
      );
    }
  }

  Future<Response> post({
    required String path,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      return await _dioClient.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioException catch (e) {
      return e.response ??
          Response(
            statusCode: 500,
            requestOptions: RequestOptions(),
          );
    } catch (e) {
      return Response(
        statusCode: 500,
        requestOptions: RequestOptions(),
      );
    }
  }
}
