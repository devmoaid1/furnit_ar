import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:furnit_ar/core/utils/extensions/app_context.dart';
import 'package:furnit_ar/core/utils/extensions/spaces.dart';
import 'package:furnit_ar/presentation/login/widgets/login_form.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_routes.dart';
import '../../../core/constants/layouts.dart';
import '../../widgets/custom_button.dart';

class LoginDetailsSection extends StatefulWidget {
  const LoginDetailsSection({super.key});

  @override
  State<LoginDetailsSection> createState() => _LoginDetailsSectionState();
}

class _LoginDetailsSectionState extends State<LoginDetailsSection> {
  late GlobalKey<FormBuilderState> _loginFormKey;

  @override
  void initState() {
    super.initState();
    _loginFormKey = GlobalKey<FormBuilderState>();
  }

  @override
  void dispose() {
    if (_loginFormKey.currentState != null) {
      _loginFormKey.currentState!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        clipBehavior: Clip.antiAlias,
        padding: AppLayouts.kScaffoldPadding,
        decoration: BoxDecoration(
            color: context.appTheme.scaffoldBackgroundColor,
            borderRadius:
                const BorderRadius.only(topLeft: Radius.circular(68))),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              40.vSpace,
              Text(
                'Login',
                style: context.appTextTheme.headlineLarge,
              ),
              const SizedBox(
                width: double.infinity,
              ),
              LoginForm(formKey: _loginFormKey),
              30.vSpace,
              CustomButton(
                onPressed: () {
                  if (_loginFormKey.currentState!.validate()) {
                    print('valid');
                  }
                },
                child: Text(
                  'Login',
                  style: context.appTextTheme.bodyMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
              30.vSpace,
              Center(
                child: RichText(
                    text: TextSpan(
                  text: 'Don`t have an account? ',
                  style: context.appTextTheme.bodyMedium,
                  children: [
                    TextSpan(
                        text: 'Sign Up',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context
                              .pushReplacementNamed(AppRoutes.registerRoute),
                        style: context.appTextTheme.bodyMedium!
                            .copyWith(color: context.appTheme.primaryColor)),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
