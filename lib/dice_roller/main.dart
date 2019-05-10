import 'package:flutter/material.dart';


//TODO: Update pubspec file for image assets first

class MyDiceRoller extends StatefulWidget {
  @override
  _MyDiceRollerState createState() => _MyDiceRollerState();
}

class _MyDiceRollerState extends State<MyDiceRoller> {

  AssetImage one = AssetImage("images/dice_roller_one.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
    );
  }
}