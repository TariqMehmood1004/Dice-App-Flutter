import 'package:flutter/material.dart';
import 'components/controllers/splash_screen/splash_screen_controller.dart';
import 'components/utilities/colors/app_colors.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorController.reddish,
      body: const SplashScreenController(),
    );
  }
}
