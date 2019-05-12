import 'package:flutter/material.dart';
import 'MyHomePage.dart';

class MySignUpPage extends StatefulWidget {
  @override
  _MySignUpPageState createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  GlobalKey<FormState> _key = GlobalKey();
  String name, email, number,password;

  _sendToNextScreen() {
    if (_key.currentState.validate()) {
      _key.currentState.save();
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(
                  name: name,
                  email: email,
                  number: number,
                  password: password,
                ),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Card(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Image(
                  image: AssetImage("images/logo.png"),
                  width: 100.0,
                  height: 100.0,
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Enter Your Name";
                      }
                    },
                    cursorColor: Colors.white,
                    onSaved: (input) => name = input,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      fillColor: Colors.black,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Enter Your Email";
                      }
                    },
                    cursorColor: Colors.white,
                    onSaved: (input) => email = input,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      fillColor: Colors.black,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Enter Your Password";
                      }
                    },
                    obscureText: true,
                    cursorColor: Colors.white,
                    onSaved: (input) => password = input,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.black,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Enter Your Phone Number";
                      }
                    },
                    cursorColor: Colors.white,
                    onSaved: (input) => number = input,
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      fillColor: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                RaisedButton(
                  child: Text(
                    "Signup",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  color: Colors.white,
                  onPressed: _sendToNextScreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
