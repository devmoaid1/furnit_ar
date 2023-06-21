import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:furnit_ar/core/dependencies.dart';

import 'furnitAr_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();

  runApp(const FurnitArApp());
}
