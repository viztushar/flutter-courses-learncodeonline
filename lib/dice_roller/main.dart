import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

//TODO: Update pubspec file for image assets first

class MyDiceRoller extends StatefulWidget {
  @override
  _MyDiceRollerState createState() => _MyDiceRollerState();
}

class _MyDiceRollerState extends State<MyDiceRoller> {
  AssetImage one = AssetImage("images/dice_roller_one.png");
  AssetImage two = AssetImage("images/dice_roller_two.png");
  AssetImage three = AssetImage("images/dice_roller_three.png");
  AssetImage four = AssetImage("images/dice_roller_four.png");
  AssetImage five = AssetImage("images/dice_roller_five.png");
  AssetImage six = AssetImage("images/dice_roller_six.png");

  AssetImage defaultImage;
  AssetImage defaultTwoImage;
  var intNumber;
  var stringWon = "null";

  @override
  void initState() {
    super.initState();
    defaultImage = one;
    defaultTwoImage = one;
    intNumber = 0;
  }

  void rollDice() {
    var random = (1 + Random().nextInt(6));
    intNumber = random;
    AssetImage newImage;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }

    setState(() {
      defaultImage = newImage;
    });
  }

  void rollDiceTwo() {
    var random = (1 + Random().nextInt(6));

    AssetImage newImage;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }

    setState(() {
      defaultTwoImage = newImage;
      if (intNumber < random) {
        stringWon = "Player Two Won";
      } else if (intNumber == random) {
        stringWon = "Draw";
      } else {
        stringWon = "Player One Won";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller Game"),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Player One",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 6.0),
                      ),
                      Image(
                        image: defaultImage,
                        width: 150.0,
                        height: 150.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 100.0),
                        child: RaisedButton(
                          color: Colors.black,
                          padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                          child: Text(
                            "Roll the Dice",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: rollDice,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Player Two",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 6.0),
                      ),
                      Image(
                        image: defaultTwoImage,
                        width: 150.0,
                        height: 150.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 100.0),
                        child: RaisedButton(
                          color: Colors.black,
                          padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                          child: Text(
                            "Roll the Dice",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: rollDiceTwo,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Text(
                stringWon,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
