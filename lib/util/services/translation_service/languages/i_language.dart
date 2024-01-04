import 'package:flutter/material.dart';

abstract class ILanguage {
  Locale get locale => const Locale('tr', 'TR');

  Map<String, String> get keys {
    Map<String, String> translationKeys = {};
    translationKeys.addAll(uiKeys);
    translationKeys.addAll(apiKeys);
    return translationKeys;
  }

  Map<String, String> get uiKeys;
  Map<String, String> get apiKeys;
}
