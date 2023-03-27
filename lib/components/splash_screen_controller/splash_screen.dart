import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

//
//
//
class DashboardController extends StatefulWidget {
  const DashboardController({super.key});

  @override
  State<DashboardController> createState() => _DashboardControllerState();
}

class _DashboardControllerState extends State<DashboardController> {
  Random random = Random();
  int diceNo = 1;
  String winner = "";
  IconData icon = Icons.hourglass_empty;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller.forward(from: 0).then((_) {
      update();
    });
    _controller.reverse(from: 1);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer from 0 to n-1
      diceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    update();

                    if (diceNo != 6) {
                      winner = "";
                      icon = Icons.hourglass_empty;
                    } else {
                      winner = "Winner";
                      icon = Icons.sentiment_satisfied_rounded;
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/images/dice-$diceNo.png'),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon),
                Text(
                  winner.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 22,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
