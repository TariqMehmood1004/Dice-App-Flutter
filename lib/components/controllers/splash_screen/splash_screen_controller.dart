import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/colors/app_colors.dart';
import '../dashboard/dashboard.dart';
import 'package:rive/rive.dart';

class SplashScreenController extends StatefulWidget {
  const SplashScreenController({super.key});

  @override
  State<SplashScreenController> createState() => _SplashScreenControllerState();
}

class _SplashScreenControllerState extends State<SplashScreenController> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColorController.transparent,
    ));

    Timer(const Duration(days: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const DashboardController()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: const [
            // RiveAnimation.asset('assets/animations/mixing_animations.riv'),
          ],
        ),
      ),
    );
  }
}
