import 'package:flutter/material.dart';

import 'palette.dart';

final ThemeData appTheme = ThemeData(colorSchemeSeed: Palette.primary, fontFamily: 'SFProRounded').copyWith(
  primaryColor: Palette.primary,
  scaffoldBackgroundColor: Palette.scaffoldBackground,
  elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: Palette.primary)),
);
