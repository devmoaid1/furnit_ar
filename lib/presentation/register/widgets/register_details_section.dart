import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:furnit_ar/core/constants/layouts.dart';
import 'package:furnit_ar/core/utils/extensions/app_context.dart';
import 'package:furnit_ar/core/utils/extensions/spaces.dart';
import 'package:furnit_ar/presentation/register/widgets/register_form.dart';
import 'package:furnit_ar/presentation/widgets/custom_button.dart';

class RegisterDetailsSection extends StatefulWidget {
  const RegisterDetailsSection({
    super.key,
  });

  @override
  State<RegisterDetailsSection> createState() => _RegisterDetailsSectionState();
}

class _RegisterDetailsSectionState extends State<RegisterDetailsSection> {
  late GlobalKey<FormBuilderState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormBuilderState>();
  }

  @override
  void dispose() {
    super.dispose();
    _formKey.currentState!.dispose();
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
              RegisterForm(formKey: _formKey),
              30.vSpace,
              CustomButton(
                child: Text(
                  'Sign Up',
                  style: context.appTextTheme.bodyMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
              30.vSpace,
              Center(
                child: RichText(
                    text: TextSpan(
                  text: 'Do have an account? ',
                  style: context.appTextTheme.bodyMedium,
                  children: [
                    TextSpan(
                        text: 'Login',
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
