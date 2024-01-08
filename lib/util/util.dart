import 'package:flutter/material.dart';

extension StringExtension on String {
  String get onlyCapitalizeFirstChars {
    final words = split(' ');
    final capitalizedWords = words.map((word) {
      final firstChar = word.characters.first.toUpperCase();
      final rest = word.characters.skip(1).toLowerCase().toString();
      return '$firstChar$rest';
    });
    return capitalizedWords.join(' ');
  }
}
