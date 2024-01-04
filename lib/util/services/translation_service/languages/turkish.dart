import 'dart:ui';

import 'i_language.dart';

class Turkish extends ILanguage {
  static final Turkish _instance = Turkish._internal();

  factory Turkish() {
    return _instance;
  }

  Turkish._internal();

  @override
  Locale get locale => const Locale('tr', 'TR');

  @override
  Map<String, String> get uiKeys => {
        'EMAIL_ADDRESS': 'E-Posta Adresi',
        'PASSWORD': 'Şifre',
        'FORGOT_MY_PASSWORD': 'şifremi Unuttum',
        'SIGIN': 'Giriş Yap',
      };

  @override
  Map<String, String> get apiKeys => {
        'AN_ERROR_OCCURRED': 'Bir hata oluştu.',
        'USERNAME_OR_PASSWORD_WRONG': 'Kullanıcı adı veya şifre yanlış.',
      };
}
