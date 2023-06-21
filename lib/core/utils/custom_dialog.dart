import 'package:flutter/material.dart';
import 'package:furnit_ar/furnitar_app.dart';

void showCustomDialog() {
  showDialog(
    context: navigatorKey.currentContext!,
    builder: (context) => const Column(),
  );
}
