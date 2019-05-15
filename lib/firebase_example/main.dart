import 'package:flutter/material.dart';
import 'homepage.dart';
import 'signin.dart';
import 'signup.dart';

class MyFirebaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Login',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: <String, WidgetBuilder> {
        "/singUp" : (BuildContext context) => MySignUp(),
        "/singIn" : (BuildContext context) => MySignIn(),
      },
    );
  }
}