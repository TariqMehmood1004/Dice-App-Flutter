//
//
//
import 'dart:math';

import 'package:flutter/material.dart';

import '../../widgets/bottom_navigation_bar.dart';

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
      bottomNavigationBar: const NavigationBarWidget(),
    );
  }
}
