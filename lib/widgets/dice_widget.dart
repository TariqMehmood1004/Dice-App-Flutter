// ignore: file_names
import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DiceScreenState createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  // ignore: prefer_final_fields
  List<DiceWidget> _diceList = [];

  void _addDice() {
    setState(() {
      _diceList.add(const DiceWidget());
    });
  }

  void _deleteDice() {
    setState(() {
      if (_diceList.isEmpty) {
        debugPrint("empty");
      } else {
        _diceList.removeLast();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.transparent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 16.0),
              Expanded(
                child: Container(
                  width: 250,
                  color: Colors.transparent,
                  margin: const EdgeInsets.only(top: 20),
                  child: ListView.builder(
                    itemCount: _diceList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 200,
                        height: 200,
                        color: Colors.transparent,
                        child: _diceList.isNotEmpty
                            ? _diceList[index]
                            : const Text("empty"),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: _deleteDice,
            tooltip: 'Delete Dice',
            child: const Icon(Icons.delete),
          ),
          const SizedBox(
            width: 5,
          ),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: _addDice,
            tooltip: 'Add Dice',
            child: const Icon(
              Icons.add,
            ),
          ),
        ],
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
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Image(
            image: AssetImage('assets/images/dice-$_diceValue.png'),
          ),
        ),
      ),
    );
  }
}
