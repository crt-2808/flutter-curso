import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text(
        'My First App',
        style: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ),
    body: DicePage(),
  )));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3743696701.
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
                onTap: () {
                  setState(() {
                    rollDice();
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
                onTap: () {
                  setState(() {
                    rollDice();
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ))
        ],
      ),
    );
  }
}
