import 'package:flutter/material.dart';

class NumberAudio {
  String audioUri;
  MaterialColor buttonColor;
  String buttonText;

  NumberAudio(String audioUri, MaterialColor buttonColor, String buttonText) {
    this.audioUri = audioUri;
    this.buttonColor = buttonColor;
    this.buttonText = buttonText;
  }
}
