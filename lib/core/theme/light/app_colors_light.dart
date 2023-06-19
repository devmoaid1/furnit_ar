import 'package:flutter/material.dart';

abstract class AppColorsLight {
  static const kPrimaryColor = Color(0xff00A0B0);
  static final kPrimaryColorLight = const Color(0xff00B086).withOpacity(0.7);

  static const kScaffoldColor = Color(0xffF6F6F6);
  static const kErrorColor = Color(0xffEF5350);
  static const kCaptionColor = Color(0xff7C8183);
  static const kIconColor = Color(0xff3F4345);
  static const kSecondaryColor = Color(0xff8BC34A);

  static final kDefaultLinearGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [kPrimaryColor, kPrimaryColorLight], // Set the gradient colors
  );
}
