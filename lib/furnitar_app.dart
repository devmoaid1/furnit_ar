import 'package:flutter/material.dart';
import 'package:furnit_ar/core/constants/app_strings.dart';

import 'presentation/home/views/home.dart';

class FurnitArApp extends StatelessWidget {
  const FurnitArApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
