import 'package:flutter/material.dart';
import 'package:furnit_ar/core/constants/text_styles.dart';
import 'package:furnit_ar/core/theme/light/app_colors_light.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColorsLight.kPrimaryColor,
  onPrimary: AppColorsLight.kPrimaryColor,
  primaryContainer: Color(0xFF94F1FF),
  onPrimaryContainer: Color(0xFFFFFFFF),
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

ElevatedButtonThemeData customElevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    splashFactory: NoSplash.splashFactory,
    surfaceTintColor: MaterialStateProperty.all<Color>(Colors.transparent),
    // Set the background color
    // Set the text color
    padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.all(16.0)), // Set the button padding
    textStyle: MaterialStateProperty.all<TextStyle>(Styles.kbodyMediumTextStyle
            .copyWith(color: Colors.white) // Set the text style
        ),
    // Set the button elevation
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Set the button border radius
      ),
    ),
  ),
);

final ThemeData lightTheme = ThemeData(
    fontFamily: 'Montserrat',
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: AppColorsLight.kScaffoldColor,
    primaryColor: AppColorsLight.kPrimaryColor,
    useMaterial3: true,
    elevatedButtonTheme: customElevatedButtonTheme,
    textTheme: TextTheme(
        bodyLarge: Styles.kbodyLargeTextStyle,
        bodyMedium: Styles.kbodyMediumTextStyle,
        bodySmall: Styles.kbodysmallTextStyle,
        headlineLarge: Styles.kHeadingLargeTextStyle,
        headlineMedium: Styles.kHeadingMediumTextStyle,
        headlineSmall: Styles.kHeadingSmallTextStyle));
