import 'package:flutter/material.dart';

import 'presentation/home/views/home.dart';

class FurnitArApp extends StatelessWidget {
  const FurnitArApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
