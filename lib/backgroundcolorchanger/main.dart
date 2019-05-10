import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var colors = [
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.lightGreen,
    Colors.lime,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
    Colors.deepOrange,
    Colors.brown,
    Colors.grey,
    Colors.blueGrey
  ];

  var currentColor = Colors.white;

  setRandomColor(){
    var rnd = Random().nextInt(colors.length);
    setState(() {
     currentColor = colors[rnd]; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Background Changer"),
        elevation: 0.0,
        backgroundColor: currentColor,
      ),
      backgroundColor: currentColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          RaisedButton(
              color: Color(0xFF212121),
              child: Text("Change it!", style: TextStyle(
                color: Colors.white
              ),),
              onPressed:
                  setRandomColor,
            ),
          ],
        ),
      ),
    
    );
  }
}
