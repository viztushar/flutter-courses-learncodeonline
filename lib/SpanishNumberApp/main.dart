import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var coutNumber = 0;
  List<String> spanishNumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "siete",
    "ocho",
    "nueve",
    "diez"
  ];

  List<String> englishNumbers = [
    "one","two","three","four","five","six","seven","eight","nine","ten"
  ];

  var defaultText = "number";
  var defaultNumber = "number";

  void displaySnumner() {
    setState(() {
      defaultText = spanishNumbers[coutNumber];
      defaultNumber = englishNumbers[coutNumber];
      if (coutNumber < 9) {
        coutNumber = coutNumber + 1;
      } else {
        coutNumber = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Number App'),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              defaultText,
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 100.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Text(
              defaultNumber,
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 70.0,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: displaySnumner,
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
