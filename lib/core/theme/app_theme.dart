import 'package:flutter/material.dart';

import 'palette.dart';

final colorScheme = ColorScheme.fromSeed(seedColor: Palette.primary).copyWith(
  primary: Palette.primary,
);
final appTheme = ThemeData(colorScheme: colorScheme, fontFamily: 'SFProRounded').copyWith(
  primaryColor: Palette.primary,
  scaffoldBackgroundColor: Palette.background,
  elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: Palette.primary)),
  appBarTheme: AppBarTheme(
    elevation: 0,
    centerTitle: false,
    backgroundColor: colorScheme.onPrimary,
    foregroundColor: colorScheme.onSurface,
    titleTextStyle: TextStyle(
      fontFamily: 'SFProRounded',
      color: colorScheme.primary,
      fontWeight: FontWeight.w800,
      fontSize: 34.0,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    isDense: true,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0), borderSide: BorderSide.none),
  ),
);
