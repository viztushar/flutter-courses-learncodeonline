import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String name, email, number, password;

  MyHomePage(
      {Key key, @required this.name, this.email, this.number, this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
            ),
            Image(
              image: AssetImage("images/logo.png"),
              width: 100.0,
              height: 100.0,
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text(
                "${name}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "${email}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                "${password}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text(
                "${name}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
