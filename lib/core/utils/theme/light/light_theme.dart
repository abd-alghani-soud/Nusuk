import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:nusuk/core/constants/my_colors.dart";

class MaterialTheme {
  final String fontFamily;
  const MaterialTheme(this.fontFamily);

  static const List<String> _fontFallbacks = [
    'Roboto', 'NRT', 'Tajawal', 'SF Pro Text', 'Rudaw',
  ];

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: MyColors.primary,
      onPrimary: MyColors.textLight,
      secondary: MyColors.accent,
      onSecondary: MyColors.textLight,
      error: Color(0xffb32d56),
      onError: Color(0xffffffff),
      surface: MyColors.cardBackground,
      onSurface: MyColors.textPrimary,
      outline: MyColors.border,
      surfaceContainerHigh: Color(0xffF0F0F0),
    );
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: MyColors.primary,
      onPrimary: Color(0xffffffff),
      secondary: MyColors.accent,
      onSecondary: Color(0xff232323),
      error: Color(0xffb32d56),
      onError: Color(0xffffffff),
      surface: Color(0xff1a1a1a),
      onSurface: Color(0xffe0e0e0),
      outline: Color(0xff747878),
      surfaceContainerHigh: Color(0xff202020),
    );
  }

  ThemeData light() => _buildTheme(lightScheme());
  ThemeData dark() => _buildTheme(darkScheme());

  ThemeData _buildTheme(ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: fontFamily,
      fontFamilyFallback: _fontFallbacks,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.brightness == Brightness.light
          ? MyColors.background
          : colorScheme.surface,

      textTheme: _buildTextTheme(colorScheme.brightness == Brightness.dark),

      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: colorScheme.primary),
        titleTextStyle: TextStyle(
          color: colorScheme.primary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: colorScheme.brightness == Brightness.dark
              ? Brightness.light
              : Brightness.dark,
        ),
      ),
    );
  }

  TextTheme _buildTextTheme(bool isDark) {
    final Color textColor = isDark ? MyColors.textLight : MyColors.textPrimary;

    TextStyle baseStyle(double size, FontWeight weight) => TextStyle(
      fontSize: size,
      fontWeight: weight,
      color: textColor,
      fontFamilyFallback: _fontFallbacks,
    );

    return TextTheme(
      headlineMedium: baseStyle(28, FontWeight.w700),
      titleLarge: baseStyle(22, FontWeight.bold),
      titleMedium: baseStyle(19, FontWeight.bold),
      bodyLarge: baseStyle(16, FontWeight.normal),
      bodyMedium: baseStyle(14, FontWeight.normal),
      labelLarge: baseStyle(14, FontWeight.w600),
    );
  }
}