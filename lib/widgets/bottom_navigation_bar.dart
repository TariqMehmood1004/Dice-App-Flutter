import 'package:flutter/material.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int _currentIndex = 0;
  final List<Widget> body = [
    const Icon(Icons.abc),
    const Icon(Icons.abc_sharp),
    const Icon(Icons.abc_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(label: 'menu', icon: Icon(Icons.abc)),
          BottomNavigationBarItem(
              label: 'Profile', icon: Icon(Icons.ac_unit_rounded)),
          BottomNavigationBarItem(
              label: 'Search', icon: Icon(Icons.access_alarm_rounded)),
        ],
      ),
    );
  }
}
