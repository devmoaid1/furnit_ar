import 'package:flutter/material.dart';
import 'package:furnit_ar/core/utils/extensions/app_context.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: context.appTheme.primaryColor,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: context.screenHeight * 0.65,
            decoration: BoxDecoration(
                color: context.appTheme.colorScheme.onPrimaryContainer,
                borderRadius:
                    const BorderRadius.only(topLeft: Radius.circular(68))),
          ),
        )
      ],
    );
  }
}
