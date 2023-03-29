import 'dart:math';
import 'package:flutter/material.dart';

import 'dice_widget.dart';

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
          const Dice(),
          const Dice2(),
          Container(
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 20),
            child: const DiceScreen(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _pageController.jumpToPage(index);
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Page 1',
            icon: Icon(Icons.pages),
          ),
          BottomNavigationBarItem(
            label: 'Page 2',
            icon: Icon(Icons.pages),
          ),
          BottomNavigationBarItem(
            label: 'Page 3',
            icon: Icon(Icons.plus_one),
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
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.black,
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
          ],
        ),
      ),
    );
  }
}

class Dice2 extends StatefulWidget {
  const Dice2({super.key});

  @override
  State<Dice2> createState() => _Dice2State();
}

class _Dice2State extends State<Dice2> {
  Random random = Random();
  int diceNo = 1;
  int diceNo1 = 1;
  String winner = "";
  String winner2 = "";
  IconData icon = Icons.hourglass_empty;

  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer from 0 to n-1
      diceNo = Random().nextInt(6) + 1;
    });
  }

  void update2() {
    setState(() {
      diceNo1 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
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
                              image:
                                  AssetImage('assets/images/dice-$diceNo.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            update2();

                            if (diceNo1 != 6) {
                              icon = Icons.hourglass_empty;
                            } else {
                              winner2 = 'Winner'.toUpperCase();
                              icon = Icons.sentiment_satisfied_rounded;
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image:
                                  AssetImage('assets/images/dice-$diceNo1.png'),
                            ),
                          ),
                        ),
                      ),
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

class DiceWidget extends StatefulWidget {
  const DiceWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DiceWidgetState createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  int _diceValue = 1;

  void _rollDice() {
    setState(() {
      _diceValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _rollDice,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
              child: Image(
            image: AssetImage('assets/images/dice-$_diceValue.png'),
          )),
        ),
      ),
    );
  }
}
