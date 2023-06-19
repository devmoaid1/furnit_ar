import 'package:flutter/material.dart';
import 'package:furnit_ar/core/utils/extensions/app_context.dart';
import 'package:furnit_ar/presentation/register/widgets/register_body.dart';

import '../../widgets/keyboard_dissmisble.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDissmisable(
      child: Scaffold(
        backgroundColor: context.appTheme.primaryColor,
        body: const RegisterBody(),
      ),
    );
  }
}
