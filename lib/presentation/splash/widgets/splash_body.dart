import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furnit_ar/core/constants/app_assets.dart';
import 'package:furnit_ar/core/utils/extensions/spaces.dart';

import 'dots_section.dart';

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
        const DotsSection(),
        40.vSpace
      ],
    );
  }
}
