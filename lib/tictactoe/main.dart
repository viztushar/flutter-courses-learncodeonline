import 'package:flutter/material.dart';

class MyTicTacToe extends StatefulWidget {
  @override
  _MyTicTacToeState createState() => _MyTicTacToeState();
}

class _MyTicTacToeState extends State<MyTicTacToe> {
  AssetImage circle = AssetImage("images/tictactoe_circle.png");
  AssetImage cross = AssetImage("images/tictactoe_cross.png");
  AssetImage edit = AssetImage("images/tictactoe_edit.png");

  bool isCircle = true;
  String message;
  List<String> gameState;

  @override
  void initState() {
    super.initState();
    setState(() {
      this.gameState = [
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
      ];

      this.message = "";
    });
  }

  resetGame() {
    setState(() {
      this.gameState = [
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
      ];
      this.message = "";
    });
  }

  resetWithDelay(int i) {
    this.message = "${this.gameState[i]} wins";
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        resetGame();
      });
    });
  }

  AssetImage getImage(String image) {
    switch (image) {
      case ('empty'):
        return edit;
        break;
      case ('cross'):
        return cross;
        break;
      case ('circle'):
        return circle;
        break;
    }
  }

  playGame(int index) {
    if (this.gameState[index] == "empty") {
      setState(() {
        if (this.isCircle) {
          this.gameState[index] = "cross";
        } else {
          this.gameState[index] = "circle";
        }
        this.isCircle = !this.isCircle;
        this.checkWin();
      });
    }
  }

  checkWin() {
    if ((gameState[0] != "empty") &&
        (gameState[0] == gameState[1]) &&
        (gameState[1] == gameState[2])) {
      resetWithDelay(0);
    } else if ((gameState[3] != "empty") &&
        (gameState[3] == gameState[4]) &&
        (gameState[4] == gameState[5])) {
      resetWithDelay(3);
    } else if ((gameState[6] != "empty") &&
        (gameState[6] == gameState[7]) &&
        (gameState[7] == gameState[8])) {
      resetWithDelay(6);
    } else if ((gameState[0] != "empty") &&
        (gameState[0] == gameState[3]) &&
        (gameState[3] == gameState[6])) {
      resetWithDelay(0);
    } else if ((gameState[1] != "empty") &&
        (gameState[1] == gameState[4]) &&
        (gameState[4] == gameState[7])) {
      resetWithDelay(1);
    } else if ((gameState[2] != "empty") &&
        (gameState[2] == gameState[5]) &&
        (gameState[5] == gameState[8])) {
      resetWithDelay(2);
    } else if ((gameState[0] != "empty") &&
        (gameState[0] == gameState[4]) &&
        (gameState[4] == gameState[8])) {
      resetWithDelay(0);
    } else if ((gameState[2] != "empty") &&
        (gameState[2] == gameState[4]) &&
        (gameState[4] == gameState[6])) {
      resetWithDelay(1);
    } else if (!gameState.contains("empty")) {
      setState(() {
        this.message = "Game Draw";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: this.gameState.length,
              itemBuilder: (context, i) => SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: MaterialButton(
                      onPressed: () {
                        this.playGame(i);
                      },
                      child: Image(
                        image: this.getImage(this.gameState[i]),
                      ),
                    ),
                  ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              this.message,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            color: Colors.black,
            child: Text(
              "Reset Game",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            onPressed: () {
              this.resetGame();
            },
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "LearnCodeOnline.in",
              style: TextStyle(fontSize: 18.0),
            ),
          )
        ],
      ),
    );
  }
}
