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
        'SUCCESS': 'Başarılı.',
        'EMAIL_ADDRESS': 'E-Posta Adresi',
        'PASSWORD': 'Şifre',
        'FORGOT_MY_PASSWORD': 'şifremi Unuttum',
        'SIGIN': 'Giriş Yap',
        'WELCOME_@NAME': 'Hoşgeldin @name.',
        'SIGIN_SUCCESS': 'Giriş Başarılı.',
        'HOME': 'Anasayfa',
        'CATEGORIES': 'Kategoriler',
        'MESSAGES': 'Mesajlar',
        'MY_ACCOUNT': 'Hesabım',
        'APPBAR_SEARCH_HINT': 'telefon, bilgisayar, elbise...',
        'FLOW': 'Akış',
        'FOLLOWING': 'Takip Edilenler',
        'NEARBY': 'Yakındakiler',
        'SPECIAL_FOR_YOU': 'Sana Özel',
        'BRANDNEW': 'YENİ',
        'LITTLEUSED': 'AZ KULLANILMIŞ',
        'USED': 'KULLANILMIŞ',
        'PRICE_RANGE': 'Fiyat Aralığı',
        'APPLY_FILTERS': 'Filtreleri Uygula',
        'STATE': 'Durum',
        'ALL': 'Tümü',
        'DISTANCE': 'Mesafe',
        'DELIVERY_METHOD': 'Teslimat Şekli',
        'PICKUP': 'Alışveriş Yerinde Teslim',
        'DELIVERY': 'Kargo İle Teslim',
        'BRAND': 'Marka',
        'CLOSE': 'Kapat',
        'DEFAULT': 'Varsayılan',
        'PRICE_LOW_TO_HIGH': 'Artan Fiyat',
      };

  @override
  Map<String, String> get apiKeys => {
        'UNKNOWN_ERROR': 'Bilinmeyen bir hata oluştu.',
        'AN_ERROR_OCCURRED': 'Bir hata oluştu.',
        'USERNAME_OR_PASSWORD_WRONG': 'Kullanıcı adı veya şifre yanlış.',
      };
}
