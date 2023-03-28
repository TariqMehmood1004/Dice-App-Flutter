import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../dashboard/dashboard_controller.dart';

//
//
//
class SplashScreenController extends StatefulWidget {
  const SplashScreenController({super.key});

  @override
  State<SplashScreenController> createState() => _SplashScreenControllerState();
}

class _SplashScreenControllerState extends State<SplashScreenController> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const DashboardController()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 350),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/appstore.png'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 250),
                  height: 100,
                  width: 200,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              color: Colors.transparent,
                              child: const CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Color(0xff000042),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              'From',
                              style: TextStyle(
                                  color: Color(0xff000042), fontSize: 8.0),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Notio Software Solutions',
                              style: TextStyle(
                                  color: Color(0xff000042), fontSize: 8.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
