import 'package:flutter/material.dart';
import 'screens/note_list.dart';

class MyDbTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Db-TODO",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: NoteList(),
    );
  }
}