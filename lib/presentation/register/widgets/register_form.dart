import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:furnit_ar/core/utils/extensions/spaces.dart';

import '../../../core/constants/app_assets.dart';
import '../../widgets/custom_svg_visual.dart';
import '../../widgets/form_section.dart';

class RegisterForm extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  const RegisterForm({super.key, required this.formKey});

  void handleFormOnChanged(String? value, String fieldName) {
    if (value != null && value.toString().isNotEmpty) {
      formKey.currentState!.fields[fieldName]!.validate();
    } else {
      formKey.currentState!.fields[fieldName]!
          .validate(focusOnInvalid: false, clearCustomError: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
        key: formKey,
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
              onChanged: (value) => handleFormOnChanged(value, 'fullName'),
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
              onChanged: (value) => handleFormOnChanged(value, 'phone'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(errorText: 'phone is required'),
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
              onChanged: (value) => handleFormOnChanged(value, 'email'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(errorText: 'email is required'),
                FormBuilderValidators.email(errorText: 'invalid email')
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
              onChanged: (value) => handleFormOnChanged(value, 'password'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(
                    errorText: 'password is required '),
                FormBuilderValidators.minLength(8,
                    errorText: 'password should be at least 8 Charachters'),
              ]),
              prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const CustomSvgVisual(
                    iconPath: AppAssets.passwordIcon,
                  )),
            ),
          ],
        ));
  }
}
