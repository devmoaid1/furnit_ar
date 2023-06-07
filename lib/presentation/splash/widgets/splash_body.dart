import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furnit_ar/core/constants/app_assets.dart';
import 'package:furnit_ar/core/utils/extensions/spaces.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Spacer(),
        Center(child: SvgPicture.asset(AppAssets.logoTyped)),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 20.w,
              height: 20.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.6)),
            ),
            10.hSpace,
            Container(
              width: 20.w,
              height: 20.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
            ),
            10.hSpace,
            Container(
              width: 20.w,
              height: 20.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.6)),
            )
          ],
        ),
        40.vSpace
      ],
    );
  }
}
