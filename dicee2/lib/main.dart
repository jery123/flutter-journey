import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(title: Text('Dicee'), backgroundColor: Colors.red),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int firstDiceNumber = 1;
  int secondDiceNumber = 1;

  void changeDiceNumber(){
    setState(() {
      firstDiceNumber = Random().nextInt(6) + 1;
      secondDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                  changeDiceNumber();
              },
              child: Image.asset('images/dice$firstDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.blue,
                ),
              ),
              onPressed: () {
                  changeDiceNumber();
              },
              child: Image.asset('images/dice$secondDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
