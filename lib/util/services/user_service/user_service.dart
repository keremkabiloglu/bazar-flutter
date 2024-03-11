import 'dart:io';

import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/widgets.dart';

import '../../../screens/signin/model/signin_request_dto.dart';
import '../../environment/environment.dart';
import '../app_service/app_service.dart';
import 'model/user.dart';

class UserService extends GetxService {
  final _user = Rx<User?>(null);

  User? get user => _user.value;

  Future<void> initUser() async {
    final cookie = await _readCookie();
    if (cookie != null) {
      await refreshUser(cookie);
    }
  }

  Future<User?> authUser(SigninRequestDto signinRequestDto) async {
    final response = await Get.find<ApiService>().request(
      path: '${Environment.config.userPath}/login',
      method: HttpMethod.post,
      data: signinRequestDto.toJson(),
      showLoader: true,
      showError: true,
    );
    if (response?.isOk ?? false) {
      await _setUserFromResponse(response!);
      return user;
    }
    await logout();
    return null;
  }

  Future<User?> authUserFromResponse(Response response) async {
    return await _setUserFromResponse(response);
  }

  Future<User?> refreshUser(Cookie refreshCookie) async {
    final response = await Get.find<ApiService>().request(
      path: '${Environment.config.userPath}/refresh',
      method: HttpMethod.post,
      showError: false,
      showLoader: false,
      headers: {
        HttpHeaders.cookieHeader: refreshCookie.toString(),
      },
    );
    if (response?.isOk ?? false) {
      await _setUserFromResponse(response!);
      return user;
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        Get.find<AppService>().showError('${response?.data ?? ''}');
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
      'userRefreshCookie',
      cookie.toString(),
    );
  }

  Future<void> logout() async {
    await Get.find<StorageService>().delete('userRefreshCookie');
    _user.value = null;
  }
}
