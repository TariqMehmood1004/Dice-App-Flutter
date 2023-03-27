import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume/components/dashboard/dashboard_controller.dart';
import 'package:resume/utils/colors/app_colors.dart';

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

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const DashboardController()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorController.palleteColor1,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColorController.palleteColor1,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 730,
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        width: 35,
                        height: 35,
                        color: AppColorController.palleteColor,
                        image: const AssetImage(
                            'assets/images/resumeAppLoader.png'),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Resume app'.toUpperCase(),
                        style: TextStyle(
                          color: AppColorController.palleteColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                // height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end, //y-axis
                  crossAxisAlignment: CrossAxisAlignment.center, //x-axis
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: AppColorController.goldGrain,
                        strokeWidth: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'From',
                      style: TextStyle(
                          color: AppColorController.white, fontSize: 8.0),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Notio Software Solutions',
                      style: TextStyle(
                          color: AppColorController.white, fontSize: 8.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
