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
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Dice(),
      bottomNavigationBar: NavigationBarWidget(),
    );
  }

  Center diceContainer() {
    return Center(
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
                  } else {
                    winner = "Winner";
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
        ],
      ),
    );
  }
}
