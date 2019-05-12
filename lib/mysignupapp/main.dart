import 'package:flutter/material.dart';
import 'signupPage.dart';


class MySignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "User Data",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MySignUpPage(),
    );
  }
}