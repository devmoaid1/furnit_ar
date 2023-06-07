import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static final kHeadingLargeTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
  );

  static final kHeadingMediumTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
  );

  static final kHeadingSmallTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
  );

  static final kbodyMediumTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );
  static final kbodyLargeTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
  );
  static final kbodysmallTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
  );
}
