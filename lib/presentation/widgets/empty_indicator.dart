import 'package:flutter/material.dart';
import 'package:furnit_ar/core/utils/extensions/app_context.dart';
import 'package:furnit_ar/core/utils/extensions/spaces.dart';

import '../../core/constants/app_assets.dart';
import 'custom_svg_visual.dart';

class EmptyIndicator extends StatelessWidget {
  final String message;
  const EmptyIndicator({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomSvgVisual(iconPath: AppAssets.noSearch),
        30.vSpace,
        Text(
          message,
          style: context.appTextTheme.bodyMedium,
        )
      ],
    );
  }
}
