import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furnit_ar/core/theme/light/app_colors_light.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;
  const CustomButton({super.key, required this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 58.h,
        decoration: BoxDecoration(
          gradient: AppColorsLight.kDefaultLinearGradient,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ElevatedButton(onPressed: null, child: child),
      ),
    );
  }
}
