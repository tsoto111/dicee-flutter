import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = randomDiceNumber();
  int rightDiceNumber = randomDiceNumber();

  static int randomDiceNumber() {
    return Random().nextInt(6) + 1;
  }

  void rollDice() {
    setState(() {
      leftDiceNumber = randomDiceNumber();
      rightDiceNumber = randomDiceNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                // Void Callback
                rollDice();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                // Void Callback
                rollDice();
              },
            ),
          ),
        ],
      ),
    );
  }
}
