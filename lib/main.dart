import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/translation.dart';
import 'view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.native,
      translations: Messages(),
      locale: const Locale('en', 'UK'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
