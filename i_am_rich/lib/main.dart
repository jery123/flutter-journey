import 'package:flutter/material.dart';

// The main function is the starting point for all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Center(child: Text('I Am Rich')),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/diamond.png'),
              // image: NetworkImage('https://cdn.pixabay.com/photo/2015/02/17/13/19/paprika-639393_1280.jpg'),
            ),
          ),
        ),
    ),
  );
}
