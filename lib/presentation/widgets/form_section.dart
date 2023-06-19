import 'package:flutter/material.dart';
import 'package:furnit_ar/core/utils/extensions/app_context.dart';
import 'package:furnit_ar/core/utils/extensions/spaces.dart';

import 'furnitar_textfield.dart';

class FormSection extends StatelessWidget {
  final String title;
  final String fieldName;
  final String hintText;
  final bool? isReadOnly;
  final bool? isObsecure;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? intialValue;
  final Function(String?)? onChanged;
  final FormFieldValidator<String>? validator;

  const FormSection(
      {super.key,
      required this.title,
      required this.fieldName,
      required this.hintText,
      this.isReadOnly,
      this.isObsecure,
      this.suffixIcon,
      this.prefixIcon,
      this.intialValue,
      this.onChanged,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.appTextTheme.bodyLarge!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        10.vSpace,
        FurnitArTextField(
          name: fieldName,
          validator: validator,
          hintText: hintText,
          onChanged: onChanged,
          intialValue: intialValue,
          obsecure: isObsecure,
          readOnly: isReadOnly,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          fillColor: context.appTheme.colorScheme.onPrimaryContainer,
        ),
      ],
    );
  }
}
