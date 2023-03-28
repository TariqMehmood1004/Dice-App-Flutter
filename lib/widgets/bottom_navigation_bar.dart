import 'dart:math';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final tabs = [
    const Dice(),
    const Dice(),
    const Dice(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.amber,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.blue,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _pageController.jumpToPage(index);
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: const Text('Page 1'),
            icon: const Icon(Icons.pages),
          ),
          BottomNavyBarItem(
            title: const Text('Page 2'),
            icon: const Icon(Icons.pages),
          ),
          BottomNavyBarItem(
            title: const Text('Page 3'),
            icon: const Icon(Icons.plus_one),
          ),
        ],
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  Random random = Random();
  int diceNo = 1;
  String winner = "";
  IconData icon = Icons.hourglass_empty;

  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer from 0 to n-1
      diceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      winner = 'Winner'.toUpperCase();
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
