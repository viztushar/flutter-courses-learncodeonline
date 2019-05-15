import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;
  bool isSignedIn = false;

  checkAuthentication() async {
    _auth.onAuthStateChanged.listen((user) async {
      if (user == null) {
        Navigator.pushReplacementNamed(context, "/singIn");
      }
    });
  }

  getUser() async {
    FirebaseUser firebaseUser = await _auth.currentUser();
    await firebaseUser?.reload();
    firebaseUser = await _auth.currentUser();

    if (firebaseUser != null) {
      this.user = firebaseUser;
      this.isSignedIn = true;
      
    }
  }

  signOut() async {
    _auth.signOut();
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentication();
    this.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Login'),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: !isSignedIn
              ? CircularProgressIndicator()
              : Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(50),
                      child: Image(
                        image: AssetImage("images/logo.png"),
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(50),
                      child: Text(
                        "Hello, ${user.displayName}, You are logged in as ${user.email}",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: RaisedButton(
                        padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.black,
                        onPressed: signOut,
                        child: Text(
                          "SingOut",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
