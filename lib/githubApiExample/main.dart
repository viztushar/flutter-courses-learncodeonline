import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyGithubApiExample extends StatefulWidget {
  @override
  _MyGithubApiExampleState createState() => _MyGithubApiExampleState();
}

class _MyGithubApiExampleState extends State<MyGithubApiExample> {
  final String url = "https://api.github.com/users";
  List data;
  var isLoding = false;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http.get(Uri.encodeFull(url));

    setState(() {
      var convertjsondata = json.decode(response.body);
      data = convertjsondata;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Github API Exapmle"),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int i) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text(data[i]['login'],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  subtitle: Text(
                    data[i]['url'],
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
