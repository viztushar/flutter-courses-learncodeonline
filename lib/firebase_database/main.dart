import 'package:flutter/material.dart';
import 'screens/HomePage.dart';



class MyFirebaseDatabase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Firebase Database Example",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}