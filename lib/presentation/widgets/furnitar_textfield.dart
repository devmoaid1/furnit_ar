// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furnit_ar/core/utils/extensions/app_context.dart';

import '../../core/constants/layouts.dart';
import '../../core/theme/light/app_colors_light.dart';

class FurnitArTextField extends StatelessWidget {
  final Color? fillColor;
  final String? name;
  final bool? obsecure;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? errorColor;
  final bool? readOnly;
  final String? intialValue;
  final bool? isWithBorder;
  final Function(String?)? onChanged;
  final FormFieldValidator<String>? validator;
  final String? hintText;
  final VoidCallback? onTap;

  const FurnitArTextField(
      {super.key,
      this.isWithBorder = true,
      this.prefixIcon,
      this.hintText,
      this.onTap,
      this.validator,
      this.onChanged,
      this.fillColor = Colors.transparent,
      this.name = '',
      this.obsecure = false,
      this.suffixIcon,
      this.intialValue = '',
      this.errorColor = Colors.red,
      this.readOnly = false});

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      onTap: onTap ?? () {},
      readOnly: readOnly ?? false,
      validator: validator,
      onChanged: onChanged ?? (value) {},
      name: name ?? '',
      initialValue: intialValue,
      obscureText: obsecure ?? false,
      cursorHeight: 20.h,
      cursorRadius: AppLayouts.kDefaultBorderRadius,
      style: context.appTextTheme.bodyMedium
          ?.copyWith(color: AppColorsLight.kIconColor),
      cursorColor: AppColorsLight.kPrimaryColor,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: context.appTextTheme.bodyMedium
            ?.copyWith(color: AppColorsLight.kIconColor),
        errorStyle: context.appTextTheme.bodyMedium
            ?.copyWith(color: AppColorsLight.kErrorColor),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        contentPadding: EdgeInsets.symmetric(vertical: 26.h),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(AppLayouts.kDefaultBorderRadius),
            borderSide:
                BorderSide(width: 2, color: AppColorsLight.kErrorColor)),
        fillColor: fillColor,
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(AppLayouts.kDefaultBorderRadius),
            borderSide: BorderSide(width: 2, color: Colors.transparent)),
        focusedBorder: OutlineInputBorder(
            borderRadius:
                const BorderRadius.all(AppLayouts.kDefaultBorderRadius),
            borderSide:
                BorderSide(width: 2, color: context.appTheme.primaryColor)),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(AppLayouts.kDefaultBorderRadius),
        ),
      ),
    );
  }
}
