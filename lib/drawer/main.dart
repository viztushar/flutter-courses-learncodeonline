import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'category.dart';
import 'Login.dart';
import 'SignUp.dart';

class MyDrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyDrawer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder> {
        "/a" : (BuildContext context) => MyCategory(),
        "/l" : (BuildContext context) => MyLogin(),
        "/s" : (BuildContext context) => MySignUp(),
      },
    );
  }
}