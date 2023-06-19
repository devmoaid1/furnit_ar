import 'package:flutter/material.dart';
import 'package:furnit_ar/core/constants/app_assets.dart';
import 'package:furnit_ar/core/utils/extensions/spaces.dart';
import 'package:furnit_ar/presentation/widgets/custom_svg_visual.dart';

import '../../../core/theme/light/app_colors_light.dart';
import 'login_details_section.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColorsLight.kDefaultLinearGradient,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            100.vSpace,
            const CustomSvgVisual(iconPath: AppAssets.logoWhiteBack),
            100.vSpace,
            const LoginDetailsSection()
          ],
        ),
      ),
    );
  }
}
