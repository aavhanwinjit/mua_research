import 'package:ekyc/core/app_export.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

@immutable
class AppTheme {
  const AppTheme._();

  static ThemeData get lightTheme => FlexThemeData.light(
        useMaterial3: true,
        visualDensity: VisualDensity.comfortable,
        fontFamily: Strings.nunitoFont,
        useMaterial3ErrorColors: true,
        appBarBackground: transparent,
        appBarElevation: 0,
        scaffoldBackground: white,
        subThemesData: const FlexSubThemesData(
          elevatedButtonRadius: 100,
          elevatedButtonSchemeColor: SchemeColor.primary,
          appBarScrolledUnderElevation: 0,
        ),
        colors: const FlexSchemeColor(
          primary: primaryColor,
          secondary: primaryBlueColor,
          appBarColor: white,
        ),
      );
}
