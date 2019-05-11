import 'package:flutter/material.dart';
import 'dart:math';

class MyScratchAndWin extends StatefulWidget {
  @override
  _MyScratchAndWinState createState() => _MyScratchAndWinState();
}

class _MyScratchAndWinState extends State<MyScratchAndWin> {
  AssetImage lucky = AssetImage("images/scratchandwin_rupee.png");
  AssetImage circle = AssetImage("images/scratchandwin_circle.png");
  AssetImage unlucky = AssetImage("images/scratchandwin_sadFace.png");

  List<String> itemArray;
  var luckyNumber;

  @override
  void initState() {
    super.initState();
    itemArray = List<String>.generate(25, (index) => "empty");
    genrateRandomNumber();
  }

  genrateRandomNumber() {
    int rnd = Random().nextInt(25);
    setState(() {
      luckyNumber = rnd;
    });
  }

  AssetImage getImage(int index) {
    String currentState = itemArray[index];
    switch (currentState) {
      case "lucky":
        return lucky;
        break;
      case "unlucky":
        return unlucky;
        break;

      default:
        return circle;
    }
  }

  playGame(int index) {
    if (luckyNumber == index) {
      setState(() {
        itemArray[index] = "lucky";
      });
    } else {
      setState(() {
        itemArray[index] = "unlucky";
      });
    }
  }

  showAll() {
    setState(() {
      itemArray = List<String>.filled(25, "unlucky");
      itemArray[luckyNumber] = "lucky";
    });
  }

  resetGame() {
    setState(() {
      itemArray = List<String>.filled(25, "empty");
    });
    genrateRandomNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scratch And Win"),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: this.itemArray.length,
              itemBuilder: (context, i) => SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: RaisedButton(
                      onPressed: () {
                        this.playGame(i);
                      },
                      child: Image(image: this.getImage(i)),
                    ),
                  ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: RaisedButton(
              color: Colors.black,
              child: Text(
                "Show All",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: EdgeInsets.all(10.0),
              onPressed: () {
                this.showAll();
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: RaisedButton(
              color: Colors.black,
              child: Text(
                "Reset Game",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: EdgeInsets.all(10.0),
              onPressed: () {
                this.resetGame();
              },
            ),
          ),
        ],
      ),
    );
  }
}
