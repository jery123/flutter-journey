import 'dart:async';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());



class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  // Single helper to play a note from assets.
  Future<void> playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  // Buil key function
  Expanded buildKey({Color color = Colors.blue, int soundNumber = 1}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // removes rounding
          ),
        ),
        // color: Colors.green,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.green, soundNumber: 1),
              buildKey(color: Colors.teal, soundNumber: 2),
              buildKey(color: Colors.blue, soundNumber: 3),
              buildKey(color: Colors.red, soundNumber: 4),
              buildKey(color: Colors.orange, soundNumber: 5),
              buildKey(color: Colors.yellow, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}


