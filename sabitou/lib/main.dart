import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
    const MaterialApp(home: SabitouPage())
);


class SabitouPage extends StatelessWidget {
  const SabitouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: SabitouApp(),
    );
  }
}

class SabitouApp extends StatefulWidget {
  const SabitouApp({super.key});

  @override
  State<SabitouApp> createState() => _SabitouAppState();
}

class _SabitouAppState extends State<SabitouApp> {
  int actualNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              actualNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$actualNumber.png'),
        ),
      ),
    );
  }
}
