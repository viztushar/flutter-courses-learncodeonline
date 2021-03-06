import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'backgroundcolorchanger/main.dart' as backgroundchanger;
import 'SpanishNumberApp/main.dart' as SpanishNumberApp;
import 'dice_roller/main.dart' as diceRoller;
import 'tictactoe/main.dart' as tictactoe;
import 'scratchandwin/main.dart' as saw;
import 'spanishnumberaudio/main.dart' as spnumaudio;
import 'cameraandgesture/main.dart';
import 'drawer/main.dart';
import 'mysignupapp/main.dart';
import 'githubApiExample/main.dart';
import 'myrandomapiexample/main.dart';
import 'mydbtodo/main.dart';
import 'firebase_example/main.dart';
import 'firebase_database/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter courses@learncodeonline'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "Spanish Number",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpanishNumberApp.MyHomePage(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "Background Changer",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => backgroundchanger.MyHomePage(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "Dice Roller",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => diceRoller.MyDiceRoller(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "TicTacToe",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => tictactoe.MyTicTacToe(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "Scratch And Win",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => saw.MyScratchAndWin(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "Spanish Number Audio",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => spnumaudio.MySpanishNumberAudio(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "Camera And Gesture",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyCameraAndGesture(),
                      ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "Drawer App",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyDrawerApp(),
                      ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "User Data",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MySignUp(),
                      ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "Github API Example",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyGithubApiExample(),
                      ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "Random API Example",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyRandomAPI(),
                      ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "TODO APP",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyDbTodoApp(),
                      ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "Firebase Example",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyFirebaseApp(),
                      ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              RaisedButton(
                color: Color(0xFF212121),
                child: Text(
                  "Firebase Database Example",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyFirebaseDatabase(),
                      ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
