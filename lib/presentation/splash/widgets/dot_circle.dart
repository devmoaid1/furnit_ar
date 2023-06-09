import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DotCircle extends StatelessWidget {
  final Color color;
  const DotCircle({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      height: 20.h,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
