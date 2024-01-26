import 'package:flutter/material.dart';

import 'comonents/circle_thumb_shape.dart';
import 'comonents/circle_thumb_shape_range.dart';
import 'comonents/cirlce_tab_indicator.dart';
import 'comonents/track_shape.dart';

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
        fontFamily: 'HeyWow',
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
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 16,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            side: const BorderSide(
              color: Color(0xFF242424),
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
            minimumSize: const Size(0, 0),
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
        tabBarTheme: TabBarTheme(
          labelColor: const Color(0xFF272728),
          unselectedLabelColor: const Color(0xFF868687),
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF868687),
          ),
          indicator: CircleTabIndicator(
            color: const Color(0xFF242424),
            radius: 3.5,
          ),
          labelPadding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: const Color(0xFF242424),
          inactiveTrackColor: const Color(0xFFE0E0E0),
          thumbColor: const Color(0xFF242424),
          overlayColor: const Color(0xFF242424).withOpacity(0.12),
          trackHeight: 2,
          valueIndicatorShape: const DropSliderValueIndicatorShape(),
          thumbShape: const CircleThumbShape(thumbRadius: 12),
          rangeThumbShape: const CircleThumbShapeRange(thumbRadius: 12),
          trackShape: TrackShape(),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(const Color(0xFF242424)),
        ),
        expansionTileTheme: const ExpansionTileThemeData(
          tilePadding: EdgeInsets.zero,
          collapsedShape: RoundedRectangleBorder(),
          shape: RoundedRectangleBorder(),
        ),
        checkboxTheme: CheckboxThemeData(
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        listTileTheme: const ListTileThemeData(
          visualDensity: VisualDensity(vertical: -4, horizontal: -4),
          contentPadding: EdgeInsets.zero,
        ),
        dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );
}
