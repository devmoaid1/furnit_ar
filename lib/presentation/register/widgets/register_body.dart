import 'package:flutter/material.dart';
import 'package:furnit_ar/core/utils/extensions/app_context.dart';
import 'package:furnit_ar/core/utils/extensions/spaces.dart';

import 'register_details_section.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          15.vSpace,
          Text(
            'Sign Up',
            style: context.appTextTheme.headlineLarge!.copyWith(
                color: context.appTheme.colorScheme.onPrimaryContainer),
          ),
          30.vSpace,
          const RegisterDetailsSection()
        ],
      ),
    );
  }
}
