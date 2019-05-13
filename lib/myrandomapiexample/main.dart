import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyRandomAPI extends StatefulWidget {
  @override
  _MyRandomAPIState createState() => _MyRandomAPIState();
}

class _MyRandomAPIState extends State<MyRandomAPI> {
  final String url = "https://randomuser.me/api/?results=50";
  List data;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future getJsonData() async {
    var response = await http.get(
      Uri.encodeFull(url),
      headers: {"Accept": "application/json"},
    );

    setState(() {
      List convertjsondata = jsonDecode(response.body)['results'];
      data = convertjsondata;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Random API Example"),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int i) {
                    return Card(
                      elevation: 4.0,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Image(
                              width: 70.0,
                              height: 70.0,
                              fit: BoxFit.contain,
                              image: NetworkImage(data[i]['picture']['medium']),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  data[i]['name']['title'] +
                                      " " +
                                      data[i]['name']['first'] +
                                      " " +
                                      data[i]['name']['last'],
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0.0),
                                  leading: Icon(
                                    Icons.phone,
                                  ),
                                  title: Text(
                                    data[i]['phone'],
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0.0),
                                  leading: Icon(Icons.person),
                                  title: Text(
                                    data[i]['gender'],
                                  ),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0.0),
                                  leading: Icon(Icons.email),
                                  title: Text(
                                    data[i]['email'],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
