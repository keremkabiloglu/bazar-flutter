import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Color(0xFF0A0A0A),
          ),
          titleTextStyle: TextStyle(
            color: Color(0xFF0A0A0A),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F6F6),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),
        useMaterial3: false,
        splashColor: Colors.transparent,
        fontFamily: GoogleFonts.roboto().fontFamily,
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF0A0A0A),
          secondary: Color(0xFF0A0A0A),
          onPrimary: Color(0xFFFFFFFF),
          onSecondary: Color(0xFFFFFFFF),
        ),
        inputDecorationTheme: InputDecorationTheme(
          iconColor: Colors.black.withOpacity(0.25),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          fillColor: const Color(0xFFF3F3F3),
          filled: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 16,
            ),
            backgroundColor: const Color(0xFF242424),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            visualDensity: const VisualDensity(
              vertical: -4,
              horizontal: -4,
            ),
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          ),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            visualDensity: const VisualDensity(
              vertical: -4,
              horizontal: -4,
            ),
            padding: EdgeInsets.zero,
            highlightColor: Colors.transparent,
          ),
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Color(0xFF272728),
          unselectedLabelColor: Color(0xFF868687),
          labelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF868687),
          ),
          indicator: BoxDecoration(),
          labelPadding: EdgeInsets.all(6),
        ),
      );
}
