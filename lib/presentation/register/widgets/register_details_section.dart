import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:furnit_ar/core/constants/app_assets.dart';
import 'package:furnit_ar/core/constants/layouts.dart';
import 'package:furnit_ar/core/utils/extensions/app_context.dart';
import 'package:furnit_ar/core/utils/extensions/spaces.dart';
import 'package:furnit_ar/presentation/widgets/custom_button.dart';
import 'package:furnit_ar/presentation/widgets/custom_svg_visual.dart';
import 'package:furnit_ar/presentation/widgets/form_section.dart';

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

  void handleFormOnChanged(String? value, String fieldName) {
    if (value != null && value.toString().isNotEmpty) {
      _formKey.currentState!.fields[fieldName]!.validate();
    } else {
      _formKey.currentState!.fields[fieldName]!
          .validate(focusOnInvalid: false, clearCustomError: true);
    }
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
              FormBuilder(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      50.vSpace,
                      FormSection(
                        title: 'Full Name',
                        fieldName: 'fullName',
                        hintText: 'Moaid Mohamed',
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'full name is required'),
                        ]),
                        onChanged: (value) =>
                            handleFormOnChanged(value, 'fullName'),
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const CustomSvgVisual(
                              iconPath: AppAssets.userIcon,
                            )),
                      ),
                      30.vSpace,
                      FormSection(
                        title: 'Phone Number',
                        fieldName: 'phone',
                        hintText: '01033266355',
                        onChanged: (value) =>
                            handleFormOnChanged(value, 'phone'),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'phone is required'),
                          FormBuilderValidators.match(
                              RegExp(r'(^(?:[+0]9)?[0-9]{11}$)').pattern,
                              errorText: 'phone number is not valid')
                        ]),
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const CustomSvgVisual(
                              iconPath: AppAssets.phoneIcon,
                            )),
                      ),
                      30.vSpace,
                      FormSection(
                        title: 'Email Address',
                        fieldName: 'email',
                        hintText: 'moaidmohamed123@gmail.com',
                        onChanged: (value) =>
                            handleFormOnChanged(value, 'email'),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'email is required'),
                          FormBuilderValidators.email(
                              errorText: 'invalid email')
                        ]),
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const CustomSvgVisual(
                              iconPath: AppAssets.emailIcon,
                            )),
                      ),
                      30.vSpace,
                      FormSection(
                        title: 'Password',
                        fieldName: 'password',
                        hintText: 'type strong pass...',
                        onChanged: (value) =>
                            handleFormOnChanged(value, 'password'),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'password is required '),
                          FormBuilderValidators.minLength(8,
                              errorText:
                                  'password should be at least 8 Charachters'),
                        ]),
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const CustomSvgVisual(
                              iconPath: AppAssets.passwordIcon,
                            )),
                      ),
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
                                    .copyWith(
                                        color: context.appTheme.primaryColor)),
                          ],
                        )),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
