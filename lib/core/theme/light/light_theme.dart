import 'package:flutter/material.dart';
import 'package:furnit_ar/core/theme/light/app_colors_light.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColorsLight.kPrimaryColor,
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF94F1FF),
  onPrimaryContainer: Color(0xFF001F24),
  secondary: AppColorsLight.kSecondaryColor,
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFB9F474),
  onSecondaryContainer: Color(0xFF0F2000),
  tertiary: Color(0xFF00687B),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFAFECFF),
  onTertiaryContainer: Color(0xFF001F27),
  error: AppColorsLight.kErrorColor,
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: AppColorsLight.kScaffoldColor,
  onBackground: Color(0xFF001F25),
  surface: Color(0xFFF8FDFF),
  onSurface: Color(0xFF001F25),
  surfaceVariant: Color(0xFFDBE4E6),
  onSurfaceVariant: Color(0xFF3F484A),
  outline: Color(0xFF6F797A),
  onInverseSurface: Color(0xFFD6F6FF),
  inverseSurface: Color(0xFF00363F),
  inversePrimary: Color(0xFF4FD8EA),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF006973),
  outlineVariant: Color(0xFFBFC8CA),
  scrim: Color(0xFF000000),
);

final ThemeData lightTheme = ThemeData(
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: AppColorsLight.kScaffoldColor,
    primaryColor: AppColorsLight.kPrimaryColor,
    useMaterial3: true,
    textTheme: const TextTheme());
