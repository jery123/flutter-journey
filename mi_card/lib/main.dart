import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              // backgroundColor: Colors.blue,
              backgroundImage: AssetImage('images/jery.png'),
            ),
            Text(
              'Jery Foto',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'Problem Solver',
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
                fontFamily: 'SourceCodePro',
                letterSpacing: 2.5
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: ListTile(
                  leading: Icon(
                      Icons.phone,
                      color: Colors.teal
                  ),
                  title: Text(
                    '+91 8141 246 885',
                    style: TextStyle(
                      fontSize: 20,
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceCodePro'
                    ),
                  )
                ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 50
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'jeryfoto@gmail.com',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceCodePro'
                  ),
              ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}




// Challenge
/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                    color: Colors.red,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                        color: Colors.green,
                    ),
                  ]
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  color: Colors.blue,
                ),

              ],
            )
          )
        )
    );
  }
}*/
// End challenge

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 100.0,
                color: Colors.white,
                child: Text("Container 1"),
              ),
              SizedBox(width: 20,),
              Container(
                height: 100,
                color: Colors.blue,
                child: Text("Container 2")
              ),
              Container(
                height: 100,
                color: Colors.red,
                child: Text("Container 3")
              )
            ],
          ),
        ),
      ),
    );
  }
}*/
