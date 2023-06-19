import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:furnit_ar/core/utils/extensions/spaces.dart';
import 'package:furnit_ar/presentation/widgets/form_section.dart';

import '../../../core/constants/app_assets.dart';
import '../../widgets/custom_svg_visual.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  const LoginForm({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
        key: formKey,
        child: Column(
          children: [
            40.vSpace,
            FormSection(
              title: 'Email Address',
              fieldName: 'email',
              hintText: 'type your email address..',
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(errorText: 'email is required'),
                FormBuilderValidators.email(errorText: 'invalid email format')
              ]),
              prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const CustomSvgVisual(
                    iconPath: AppAssets.emailIcon,
                  )),
            ),
            35.vSpace,
            FormSection(
              title: 'Password',
              fieldName: 'password',
              hintText: 'type your password..',
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
