import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        elevation: 4,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Tushar"),
                accountEmail: Text("viztushar@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.person),
                ),
            ),
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Login"),
              trailing: Icon(Icons.email),
              onTap: () => Navigator.of(context).pushNamed("/l"),
            ),
            ListTile(
              title: Text("Sing Up"),
              trailing: Icon(Icons.create),
              onTap: () => Navigator.of(context).pushNamed("/s"),
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("data")
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.black,
      child: Icon(Icons.add),
      onPressed: () {},
    ),
    );
  }
}