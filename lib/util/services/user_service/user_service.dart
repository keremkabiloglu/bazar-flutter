import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart' hide Response;

import '../../../screens/signin/model/signin_request_dto.dart';
import '../../environment/environment.dart';
import '../api_service/api_service.dart';
import '../api_service/model/api_request.dart';
import '../app_service/app_service.dart';
import '../storage_service/storage_service.dart';
import 'model/user.dart';

class UserService extends GetxService {
  final _user = Rx<User?>(null);

  User? get user => _user.value;

  Future<void> initUser() async {
    final cookie = await _readCookie();
    if (cookie != null) {
      await refreshUser(cookie);
      if (user != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          Get.find<AppService>().showError('Welcome back ${user?.firstName}');
        });
      }
    }
  }

  Future<User?> authUser(SiginRequestDto siginRequestDto) async {
    final response = await Get.find<ApiService>().makeRequest(
      ApiRequest(
        path: '${Environment.config.userPath}/login',
        type: RequestType.post,
        data: siginRequestDto.toJson(),
        showLoader: true,
        showError: true,
      ),
    );
    if (response.isOk) {
      await _setUserFromResponse(response);
      return user;
    }
    await logout();
    return null;
  }

  Future<User?> refreshUser(Cookie refreshCookie) async {
    final response = await Get.find<ApiService>().makeRequest(
      ApiRequest(
        path: '${Environment.config.userPath}/refresh',
        options: Options(
          headers: {
            HttpHeaders.cookieHeader: refreshCookie.toString(),
          },
        ),
        type: RequestType.post,
        showLoader: false,
        showError: false,
      ),
    );
    if (response.isOk) {
      await _setUserFromResponse(response);
      return user;
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        Get.find<AppService>().showError('${response.data}');
      });
    }
    await logout();
    return null;
  }

  Future<User?> _setUserFromResponse(Response response) async {
    if (response.isOk && response.data != null && response.data is Map) {
      final user = User.fromJson(response.data);
      final authCookie = response.headers['set-cookie'] != null
          ? Cookie.fromSetCookieValue(
              response.headers['set-cookie']?.firstWhereOrNull(
                    (element) => element.contains('Authentication'),
                  ) ??
                  '',
            )
          : null;
      final refreshCookie = response.headers['set-cookie'] != null
          ? Cookie.fromSetCookieValue(
              response.headers['set-cookie']?.firstWhereOrNull(
                    (element) => element.contains('Refresh'),
                  ) ??
                  '',
            )
          : null;
      user.authCookie = authCookie;
      user.refreshCookie = refreshCookie;
      if (user.authCookie != null && user.refreshCookie != null) {
        await _writeCookie(user.refreshCookie!);
        _user.value = user;
        return user;
      }
    }
    return null;
  }

  Future<Cookie?> _readCookie() async {
    final cookie = await Get.find<StorageService>().read('userRefreshCookie');

    if (cookie != null) {
      return Cookie.fromSetCookieValue(cookie);
    }
    return null;
  }

  Future<void> _writeCookie(Cookie cookie) async {
    await Get.find<StorageService>().write(
      key: 'userRefreshCookie',
      value: cookie.toString(),
    );
  }

  Future<void> logout() async {
    await Get.find<StorageService>().delete('userRefreshCookie');
    _user.value = null;
  }
}
