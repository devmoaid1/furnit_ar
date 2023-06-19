import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:furnit_ar/core/constants/app_assets.dart';
import 'package:furnit_ar/core/constants/layouts.dart';
import 'package:furnit_ar/core/utils/extensions/app_context.dart';
import 'package:furnit_ar/core/utils/extensions/spaces.dart';
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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: AppLayouts.kScaffoldPadding,
        decoration: BoxDecoration(
            color: context.appTheme.scaffoldBackgroundColor,
            borderRadius:
                const BorderRadius.only(topLeft: Radius.circular(68))),
        child: SingleChildScrollView(
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
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const CustomSvgVisual(
                              iconPath: AppAssets.userIcon,
                            )),
                      ),
                      40.vSpace,
                      FormSection(
                        title: 'Phone Number',
                        fieldName: 'phone',
                        hintText: '01033266355',
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const CustomSvgVisual(
                              iconPath: AppAssets.phoneIcon,
                            )),
                      ),
                      40.vSpace,
                      FormSection(
                        title: 'Email Address',
                        fieldName: 'email',
                        hintText: 'moaidmohamed123@gmail.com',
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const CustomSvgVisual(
                              iconPath: AppAssets.emailIcon,
                            )),
                      ),
                      40.vSpace,
                      FormSection(
                        title: 'Password',
                        fieldName: 'password',
                        hintText: 'type strong pass...',
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const CustomSvgVisual(
                              iconPath: AppAssets.passwordIcon,
                            )),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
