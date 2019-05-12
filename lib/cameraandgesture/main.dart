import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class MyCameraAndGesture extends StatefulWidget {
  @override
  _MyCameraAndGestureState createState() => _MyCameraAndGestureState();
}

class _MyCameraAndGestureState extends State<MyCameraAndGesture> {
  File _imageFile;

  Future openCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _imageFile = image;
    });
  }

  Future openGallery() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = picture;
    });
  }

  Future<void> _optionsDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext con) {
          return AlertDialog(
            backgroundColor: Colors.white,
            //shape: StadiumBorder(),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Open Camera",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),),
                    onTap: (){
                        openCamera();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10.0),),
                  GestureDetector(
                    child: Text("Open Gallery",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),),
                    onTap: (){
                        openGallery();
                    },
                  )
                ],
              ),
            ),
            elevation: 5,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera And Gesture"),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: _imageFile == null ? Text("no Image") : Image.file(_imageFile),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _optionsDialogBox,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        tooltip: "Open Camera",
      ),
    );
  }
}
