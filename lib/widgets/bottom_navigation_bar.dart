import 'dart:math';
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

  final List<int> _diceCounters = [0];
  void _addCounter() {
    setState(() {
      _diceCounters.add(0);
    });
  }

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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 725,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: ListView.builder(
                      itemCount: _diceCounters.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 50,
                          height: 70,
                          margin: const EdgeInsets.only(top: 100),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('assets/images/dice-1.png'),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    alignment: Alignment.centerRight,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.blueAccent,
                          onPressed: () {
                            setState(() {
                              _addCounter;
                              debugPrint('added widget');
                            });
                          },
                          child: const Icon(
                            Icons.delete,
                            size: 25,
                          ),
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.black,
                          onPressed: () {
                            setState(() {
                              _addCounter;
                              debugPrint('added widget');
                            });
                          },
                          child: const Icon(
                            Icons.plus_one,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon),
                Text(
                  winner.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icon),
                        Text(
                          winner.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
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
                              winner2 = "";
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
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icon),
                        Text(
                          winner2.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
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
