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
        'PRICE_HIGH_TO_LOW': 'Azalan Fiyat',
        'SEE_PROFILE': 'Profili Gör',
        'FOLLOW': 'Takip Et',
        'BLOCK': 'Engelle',
        'UNBLOCK': 'Engeli Kaldır',
        'UNFOLLOW': 'Takibi Bırak',
        'MY_ACCOUNT_INFORMATION': 'Hesap Bilgilerim',
        'MY_PRODUCTS': 'Ürünlerim',
        'MY_FAVORITES': 'Favorilerim',
        'MY_SALES': 'Satışlarım',
        'MY_BUYINGS': 'Alışverişlerim',
        'MY_NOTIFICATIONS': 'Bildirimlerim',
        'ANALYTICS': 'Analizler',
        'MY_CUPONS': 'Kuponlarım',
        'MY_ADDRESSES': 'Adreslerim',
        'MY_BANK_ACCOUNTS': 'Banka Hesaplarım',
        'SUPPORT': 'Destek',
        'SETTINGS': 'Ayarlar',
        'LOGOUT': 'Çıkış Yap',
        'NAME': 'Ad',
        'SURNAME': 'Soyad',
        'USER_NAME': 'Kullanıcı Adı',
        'PHONE_NUMBER': 'Telefon Numarası',
        'BIRTHDAY': 'Doğum Tarihi',
        'GENDER': 'Cinsiyet',
        'ACCOUNT_CREATION_DATE': 'Hesap Oluşturma Tarihi',
        'LAST_UNSUCCESS_LOGIN_ATTEMPT': 'Son Başarısız Giriş Denemesi',
        'SAVE_CHANGES': 'Değişiklikleri Kaydet',
        'ON_SALE_ADVERTS': 'Satışta Olan İlanlar',
        'AWAITING_APPROVAL_ADVERTS': 'Onay Bekleyen İlanlar',
        'DEACTIVE_ADVERTS': 'Pasif İlanlar',
        'DISAPPROVED_ADVERTS': 'Onaylanmayan İlanlar',
        'ORDER_BY': 'Sırala',
        'NEW_TO_OLD': 'Yeniden Eskiye',
        'OLD_TO_NEW': 'Eskiden Yeniye',
        'COMPLETED': 'Tamamlandı',
        'CANCELED': 'İptal Edildi',
        'WAITING_FOR_CONFIRMATION': 'Onay Bekliyor',
        'WAITING_FOR_SHIPMENT': 'Kargoya Verilecek',
        'WAITING_FOR_DELIVERY': 'Teslimat Bekliyor',
        'PRODUCT': 'Ürün',
        'EXPIRE_DATE': 'Son Kullanma Tarihi',
        'BUY_@PRICE': 'Satın Al (@price)',
        'GIVE_OFFER': 'Teklif Ver',
        'PRODUCT_DETAILS': 'Ürün Detayları',
        'DESCRIPTION': 'Açıklama',
      };

  @override
  Map<String, String> get apiKeys => {
        'UNKNOWN_ERROR': 'Bilinmeyen bir hata oluştu.',
        'AN_ERROR_OCCURRED': 'Bir hata oluştu.',
        'USERNAME_OR_PASSWORD_WRONG': 'Kullanıcı adı veya şifre yanlış.',
      };
}
