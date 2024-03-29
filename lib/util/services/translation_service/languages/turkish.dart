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
        'OR': 'veya',
        'THIS_AREA_IS_REQUIRED': 'Bu alan zorunludur.',
        'SUCCESS': 'Başarılı.',
        'EMAIL_ADDRESS': 'E-Posta Adresi',
        'EMAIL_PHONE_OR_USERNAME': 'E-Posta, Telefon veya Kullanıcı Adı',
        'PASSWORD': 'Şifre',
        'FORGOT_MY_PASSWORD': 'şifremi Unuttum',
        'SIGNIN': 'Giriş Yap',
        'WELCOME_@NAME': 'Hoşgeldin @name.',
        'SIGNIN_SUCCESS': 'Giriş Başarılı.',
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
        'SIMILAR_PRODUCTS': 'Benzer Ürünler',
        'SELLER_OTHER_PRODUCTS': 'Satıcının Diğer Ürünleri',
        'QUESTIONS': 'Sorular',
        'SELLER_DETAILS': 'Satıcı Detayları',
        'INSTALLMENT_OPTINOS': 'Taksit Seçenekleri',
        'COLLAPSE': 'Daralt',
        'EXPAND': 'Genişlet',
        'ASK_SOMETHING': 'Bir şeyler sor...',
        'ASK': 'Sor',
        'LOGOUT_SUCCESS': 'Çıkış Başarılı.',
        'SIGN_IN_WITH_APPLE': 'Apple İle Giriş Yap',
        'SIGN_IN_WITH_GOOGLE': 'Google İle Giriş Yap',
        'DONT_HAVE_AN_ACCOUNT': 'Hesabın yok mu?',
        'CREATE_ACCOUNT': 'Hesap Oluştur',
        'VERIFY': 'Doğrula',
        'I_WANT_TO_RECEIVE_UPDATES':
            'Kampanyalardan ve güncellemelerden haberdar olmak istiyorum.',
        'INVALID_FULL_NAME': 'Geçersiz ad soyad.',
        'INVALID_PHONE_NUMBER': 'Geçersiz telefon numarası.',
        'IVALID_EMAIL': 'Geçersiz e-posta adresi.',
        'INVALID_USERNAME': 'Geçersiz kullanıcı adı.',
        'PASSWORD_SECURITY_ERROR':
            'En az 8 karakter, en az bir büyük harf, en az bir özel karakter içermelidir.',
        'PHONE_NUMBER_ALREADY_USED': 'Telefon numarası zaten kullanımda.',
      };

  @override
  Map<String, String> get apiKeys => {
        'UNKNOWN_ERROR': 'Bilinmeyen bir hata oluştu.',
        'AN_ERROR_OCCURRED': 'Bir hata oluştu.',
        'USERNAME_OR_PASSWORD_WRONG': 'Kullanıcı adı veya şifre yanlış.',
      };
}
